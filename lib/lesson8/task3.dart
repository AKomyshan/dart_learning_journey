import 'package:faker/faker.dart';
import 'package:talker/talker.dart';

import 'aop/task_annotation.dart';

//Task 3: Словники (Map)
// Підключіть до проєкту пакет word_generator (див. https://pub.dev/packages/word_generator).
// Створіть список nounsList із 50 випадкових слів (як це зробити, дивіться в документації: https://pub.dev/packages/word_generator#randomnouns).
// Із nounsList створіть Map<String, int> nounsMap, де:
// ключ — слово;
// значення — кількість символів у цьому слові.
// Створіть нову змінну Map<String, int> tempNouns.
// Додайте у tempNouns лише ті пари зі nounsMap, де довжина слова — парне число.
// Виведіть всі ключі зі tempNouns.

@Task(order: 2)
void task3(Talker logger) {
  final faker = Faker();

  final List<String> nouns = List<String>.generate(50, (_) => faker.animal.name());

  final Map<String, int> nounsMap1 = Map.fromEntries(nouns.map((x) => MapEntry(x, x.length)));
  final Map<String, int> nounsMap2 = {for (var item in nouns) item: item.length};

  // ignore: prefer_for_elements_to_map_fromiterable
  final Map<String, int> tempNouns1 = Map.fromIterable(nounsMap1.entries.where((x) => x.value.isEven), key: (k) => k.key, value: (v) => v.value);

  final Map<String, int> tempNouns2 = {
    for (var item in nounsMap2.entries)
      if (item.value.isEven) item.key: item.value
  };

  logger.verbose('Виведіть всі ключі зі tempNouns: ${Iterable.iterableToFullString(tempNouns1.keys)}');
  logger.verbose('Виведіть всі ключі зі tempNouns: ${Iterable.iterableToFullString(tempNouns2.keys)}');
}
