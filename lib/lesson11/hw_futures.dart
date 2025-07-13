import 'package:dart_learning_journey/lesson11/constants.dart';
import 'package:talker/talker.dart';

Future<String> fetchName() => Future.delayed(Duration(seconds: Constants.task1DelayInSeconds), () => 'Anton');

Future<String> fetchAge() => Future.delayed(Duration(milliseconds: Constants.task2DelayInMilliseconds), () => '25');

Future<String> delayedCountdown(int seconds, Talker logger) async {
  int acc = seconds;
  do {
    logger.verbose(acc);
    await Future.delayed(Duration(seconds: 1));
  } while (--acc > 0);

  return 'Start!';
}

Future<void> withProfiler(Talker logger, Future<void> Function() action) async {
  final stopwatch = Stopwatch();
  stopwatch.start();

  await action();

  stopwatch.stop();

  logger.verbose('Execution time: ${stopwatch.elapsed}');
}

String formatAgeString(String ageStr) {
  try {
    int age = int.parse(ageStr);
    String yearWord;

    if (age % 10 == 1 && age % 100 != 11) {
      yearWord = 'рік';
    } else if ([2, 3, 4].contains(age % 10) && ![12, 13, 14].contains(age % 100)) {
      yearWord = 'роки';
    } else {
      yearWord = 'років';
    }
    return 'Мені $age $yearWord';
  } catch (e) {
    return 'Некоректний вік: $ageStr';
  }
}