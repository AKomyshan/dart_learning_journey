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
}