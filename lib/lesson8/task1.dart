import 'dart:math';

import 'package:talker/talker.dart';

import 'aop/task_annotation.dart';

//Task 1: Списки (List)
// Створіть список numbers зі 100 елементів. Кожен елемент — випадкове число від 0 до 100 (використайте Random().nextInt(101)).
// Виведіть цей список на екран.
// Виведіть на екран 65-й елемент списку у форматі: "65-й елемент: [значення]".
// Вставте число 1000000000 на 50-ту позицію списку.
// Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
// За допомогою циклу for переберіть список. Під час перебору:
// Порахуйте суму всіх елементів, що діляться на 3 без залишку.
// Виведіть результат.
// Створіть порожній список temp. За допомогою циклу for-in переберіть numbers. Додайте до temp лише ті елементи, що діляться на 2 без залишку.
// Виведіть довжину списку temp.

// Since here we play with AOP in Dart - logging inject already in AspectOriented implementation
// But if we want to play with duck typing parameters could be infer here
// So in other words: in this project is no usage of 'task1' but it will be executed.
// There is no explicit call to this method in the project.
// The project does not pass the Talker parameter to this particular function...
// But it works since just a few 'aspects'
@task
void task1(Talker logger) {
  final List<int> numbers = List.generate(100, (_) => Random().nextInt(101));

  // i know there could be a loop or a string concatenation or some string join() here..
  // but we are already in the context of the logger
  logger.verbose('2. Виведіть цей список на екран: $numbers');

  // 3. Виведіть на екран 65-й елемент списку у форматі: "65-й елемент: [значення]".
  // 65 or 64.. i guess it 64
  logger.verbose('65-й елемент: [${numbers[64]}]');

  // Вставте число 1000000000 на 50-ту позицію списку.
  numbers[49] = 1000000000;

  // Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
  const itemsToRemove = [24, 45, 66, 88];
  numbers.removeWhere((x) => itemsToRemove.contains(x));

  // За допомогою циклу for переберіть список. Під час перебору:
  // Порахуйте суму всіх елементів, що діляться на 3 без залишку.
  // Виведіть результат.
  int sum1 = 0;
  for (final int v in numbers.where((x) => x % 3 == 0)) {
    sum1 += v;
  }

  final sum2 = numbers.where((x) => x % 3 == 0).fold(0, (a, b) => a + b);

  logger.verbose('v1: Cума всіх елементів, що діляться на 3 без залишку: $sum1');
  logger.verbose('v2: Cума всіх елементів, що діляться на 3 без залишку: $sum2');

  // Створіть порожній список temp. За допомогою циклу for-in переберіть numbers.
  // Додайте до temp лише ті елементи, що діляться на 2 без залишку.
  final temp = [];
  for (final int v in numbers.where((x) => x % 2 == 0)) {
    temp.add(v);
  }

  logger.verbose('temp is $temp');
  logger.verbose('temp length is ${temp.length}');

  // alternate %)
  final temp2 = numbers.where((x) => x % 2 == 0).toList();
  logger.verbose('temp2 is $temp2');
  logger.verbose('temp2 length is ${temp2.length}');
}