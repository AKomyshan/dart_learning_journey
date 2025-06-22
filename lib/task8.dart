/// Завдання 8: Цикли for
/// 1) Виведіть всі числа від 1 до 10.
/// 2) Виведіть тільки парні числа.
/// 3) Обчисліть суму чисел від 1 до 10.
(List<int> enumerate, List<int> evenOnlyEnumerate, int sum) task8(int count) {
  final List<int> enumerate = [];
  final List<int> evenOnlyEnumerate = [];
  int sum = 0;

  for(var i = 0; i < count; i++) {
    final humanReadableIndex = i + 1;
    enumerate.add(humanReadableIndex);
    if (humanReadableIndex % 2 == 0) {
      evenOnlyEnumerate.add(humanReadableIndex);
    }

    sum += humanReadableIndex;
  }

  return (enumerate, evenOnlyEnumerate, sum);
}

(List<int> enumerate, List<int> evenOnlyEnumerate, int sum) task8Alt(int count) {
  final List<int> enumerate = [];
  final List<int> evenOnlyEnumerate = [];
  int sum = 0;

  for(var i = 1; i <= count; i++) {
    enumerate.add(i);
    if (i % 2 == 0) {
      evenOnlyEnumerate.add(i);
    }

    sum += i;
  }

  return (enumerate, evenOnlyEnumerate, sum);
}