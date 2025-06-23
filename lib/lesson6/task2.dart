/// Завдання 2: Оператори порівняння
/// 1) Створіть змінну number.
/// 2) Перевірте:
/// Чи більше число за 50.
/// Чи менше число за 100.
/// Чи ділиться число на 5 без залишку.
/// 3) Виведіть всі результати.
///
/// Приймає ціле число [number]
///
/// Повертає Record, що містить результати цих перевірок як булеві значення:
/// - `isGreaterThan50`: `true`, якщо [number] > 50; інакше `false`.
/// - `isLessThan100`: `true`, якщо [number] < 100; інакше `false`.
/// - `isDivisibleBy5`: `true`, якщо [number] ділиться на 5 без залишку (тобто, `number % 5 == 0`); інакше `false`.
(bool isGreaterThan50, bool isLessThan100, bool isDivisibleBy5) task2(int number) =>
  (number > 50, number < 100, number % 5 == 0);