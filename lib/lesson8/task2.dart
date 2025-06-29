import 'package:dart_learning_journey/lesson8/aop/task_annotation.dart';
import 'package:dart_learning_journey/lesson8/names.dart';
import 'package:talker/talker.dart';

//Task 2: Множини (Set)
// Створіть окремий файл names.dart.
// У цьому файлі створіть дві змінні:
// List<String> ukrainianNames1
// List<String> ukrainianNames2
// За допомогою ChatGPT згенеруйте список із 50 українських імен та збережіть його в ukrainianNames1.
// За допомогою DeepSeek згенеруйте інший список із 50 українських імен для ukrainianNames2.
// Поверніться до основного файлу з домашнім завданням (lib/main.dart).
// Створіть Set uniqueNames1 і додайте до нього всі імена з ukrainianNames1.
// Створіть Set uniqueNames2 і додайте до нього всі імена з ukrainianNames2.
// Створіть новий Set зі спільними іменами обох списків. Виведіть кількість елементів у цій множині.
// Створіть множину з іменами, що є в uniqueNames1, але яких немає в uniqueNames2. Виведіть ці імена.
// Створіть множину з іменами, що є в uniqueNames2, але яких немає в uniqueNames1. Виведіть ці імена.

@Task(order: 1)
void task2(Talker logger) {
  // final Set<String> uniqueNames1 = ukrainianNames1.toSet();
  final Set<String> uniqueNames1 = {...ukrainianNames1};
  final Set<String> uniqueNames2 = Set<String>.from(ukrainianNames2);

  final intersection = uniqueNames1.intersection(uniqueNames2);
  logger.verbose('Створіть новий Set зі спільними іменами обох списків.'
      ' Виведіть кількість елементів у цій множині: ${intersection.length}');

  final Set<String> namesOnlyInUniqueNames1 = uniqueNames1.difference(uniqueNames2);
  logger.verbose('Створіть множину з іменами, що є в uniqueNames1, але яких немає в uniqueNames2. '
      'Виведіть ці імена: $namesOnlyInUniqueNames1');

  final Set<String> namesOnlyInUniqueNames2 = uniqueNames2.difference(uniqueNames1);
  logger.verbose('Створіть множину з іменами, що є в uniqueNames2, але яких немає в uniqueNames1. '
      'Виведіть ці імена: $namesOnlyInUniqueNames2');
}
