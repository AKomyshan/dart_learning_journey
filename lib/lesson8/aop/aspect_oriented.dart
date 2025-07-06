import 'dart:mirrors';

import 'package:dart_learning_journey/lesson8/aop/task_annotation.dart';
import 'package:dart_learning_journey/lesson8/logging/custom_logs.dart';
import 'package:talker/talker.dart';

class _TaskEntry {
  final void Function(Talker logger) func;
  final int order;

  _TaskEntry(this.func, this.order);
}

class AspectOriented {
  final Talker _logger;

  AspectOriented(this._logger);

  void run({required Object libraryAnchor}) {

    // libraryAnchor is not used in this method but this parameter is mandatory because Dart has an interesting
    // mechanism of three shaking, even aggressive I would say, so we need to make sure that code in which
    // there may be tasks for execution loaded into memory.

    _logger.info('Searching for @task functions using reflect...');

    final mirrorSystem = currentMirrorSystem();
    final talkerClassMirror = reflectClass(Talker);
    final tasksToRun = <_TaskEntry>[];

    // Since it's just homeworks skipped advanced checks what 'main' here since we have more than one main.
    final currentLibraries = mirrorSystem.libraries;

    for (final currentLibrary in currentLibraries.entries) {
      _logger.debug('Inspecting library: ${currentLibrary.key.toString()}');

      for (final declaration in currentLibrary.value.declarations.values) {
        if (declaration case MethodMirror(isStatic: true) || MethodMirror(isTopLevel: true)) {
          for (final metadata in declaration.metadata) {
            if (metadata.reflectee is! Task) {
              continue;
            }

            final functionName = MirrorSystem.getName(declaration.simpleName);
            final taskAnnotation = metadata.reflectee as Task;

            // Here is place for play with duck typing... if we want ofc:)
            if (declaration.parameters.length == 1 && declaration.parameters.first.type == talkerClassMirror) {
              _logger.info('Found @task function: $functionName');

              if (declaration.isTopLevel || declaration.isStatic) {
                tasksToRun
                    .add(_TaskEntry((logger) => currentLibrary.value.invoke(declaration.simpleName, [logger]), taskAnnotation.order));
              }
            } else {
              _logger.info('Skipping $functionName: @task functions must have no parameters for automatic execution.');
            }
          }
        }
      }
    }

    if (tasksToRun.isEmpty) {
      _logger.info('No @task functions found to run.');
      return;
    }

    _logger.info('Running @task functions:');
    tasksToRun.sort((a, b) => a.order.compareTo(b.order));
    for (var i = 0; i < tasksToRun.length; i++) {
      final taskEntry = tasksToRun[i];
      final taskNumber = i + 1;
      _logger.logCustom(TaskStartingLog(taskNumber));

      // Real act here!!!
      taskEntry.func(_logger);

      _logger.logCustom(TaskCompletedLog(taskNumber));
    }
  }
}
