import 'dart:async';
import 'dart:math';

import 'package:dart_learning_journey/lesson11/constants.dart';
import 'package:dart_learning_journey/lesson11/hw_futures.dart';
import 'package:dart_learning_journey/shared/logging.dart';

void main() async {
  final talker = getLogger();
  talker.verbose('Start checkpoint 1');

  await withProfiler(talker, () async {
    talker.verbose('Мене звати ${await fetchName()}');
    talker.verbose(formatAgeString(await fetchAge()));
  });

  talker.verbose('Start checkpoint 2');

  await withProfiler(talker, () async {
    final results = await Future.wait([fetchName(), fetchAge()]);
    talker.verbose('Мене звати ${results[0]}');
    talker.verbose(formatAgeString(results[1]));
  });

  final start = await delayedCountdown(5, talker);
  talker.verbose(start);

  talker.warning('Part 2: Streams');

  final task6Stream = Stream.fromIterable(List.generate(5, (_) => Random().nextInt(Constants.pow2_32)));

  await for (final value in task6Stream) {
    talker.verbose('[loop] $value');
  }
  task6Stream.listen((data) => talker.verbose('[listen] $data'));

  final task7Stream = Stream.periodic(const Duration(seconds: 1), (_) => Random().nextInt(Constants.pow2_32)).take(10);
  await task7Stream.forEach((x) => talker.verbose('$x...'));

  final streamController = StreamController<String>()
    ..add('Hello ')
    ..add('World ')
    ..add('Dart');

  streamController.stream.listen((x) => talker.verbose('[StreamController] $x'), onDone: () => talker.verbose('Стрім завершено'));

  await streamController.close();
}
