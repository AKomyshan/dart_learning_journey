import 'package:dart_learning_journey/lesson11/hw_futures.dart';
import 'package:dart_learning_journey/shared/logging.dart';

void main() async {
  final talker = getLogger();
  final name = await fetchName();
  talker.verbose('Мене звати $name');
}