/// Завдання 5: Оператори присвоєння
/// Використовувати тільки оператори присвоєння (+=, -=, *=, /=)
/// 1) Створіть змінну score = 0.
/// 2) Створіть зміни з даними:
/// correctAnswers = 17;
/// mistakes = 3;
/// totalQuestions = 20;
/// 3) Додайте 10 балів за кожну правильну відповідь.
/// 4) Відніміть 5 балів за кожну помилку.
/// 5) Збільшіть загальну кількість балів у 2 рази.
/// 6) Поділіть бали на кількість запитань.
/// 7) Виведіть остаточний результат.
///
/// Параметри:
/// - [initialScore]: Початковий бал.
/// - [correctAnswers]: Кількість правильних відповідей.
/// - [mistakes]: Кількість помилок.
/// - [totalQuestions]: Загальна кількість запитань.
///
/// Повертає остаточний бал типу [double].
double task5(int correctAnswers, int mistakes, int totalQuestions) {
  if (totalQuestions <= 0) {
    throw ArgumentError('totalQuestions should be greater than zero');
  }

  double score = 0;

  score += correctAnswers * 10;
  score -= mistakes * 5;
  score *= 2;
  score /= totalQuestions;

  return score;
}
