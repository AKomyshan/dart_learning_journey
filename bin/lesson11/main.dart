import 'package:dart_learning_journey/lesson11/hw_futures.dart';
import 'package:dart_learning_journey/shared/logging.dart';

void main() async {
  final talker = getLogger();
  talker.verbose('Start checkpoint');

  talker.verbose('Мене звати ${await fetchName()}');

  talker.verbose(formatAgeString(await fetchAge()));
}

String formatAgeString(String ageStr) {
  try {
    int age = int.parse(ageStr);
    String yearWord;

    if (age % 10 == 1 && age % 100 != 11) {
      yearWord = "рік";
    } else if ([2, 3, 4].contains(age % 10) && ![12, 13, 14].contains(age % 100)) {
      yearWord = "роки";
    } else {
      yearWord = "років";
    }
    return "Мені $age $yearWord";
  } catch (e) {
    return "Некоректний вік: $ageStr";
  }
}