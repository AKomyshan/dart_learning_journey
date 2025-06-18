/// Завдання 6: Умовні конструкції if/else
/// 1) Створіть змінну examScore з значенням 56
/// 2) Створіть умовні конструкції if / else if / else
/// 3) Якщо більше 90 — вивести “Відмінно”.
/// 4) Якщо 75–90 — “Добре”.
/// 5) Якщо 60–74 — “Задовільно”.
/// 6) Якщо менше 60 — “Не здано”.
/// 7) Додатково: якщо оцінка менше 20 — вивести “Повторити курс”.
/// 8) Поекспериментуйте, змінюючи значення examScore
Grade task6(int examScore) {
  if (examScore > 90) {
    return Grade.excellent;
  } else if (examScore > 75) {
    return Grade.good;
  } else if (examScore > 60) {
    return Grade.satisfy;
  } else if (examScore > 20) {
    return Grade.failed;
  } else {
    return Grade.courseRepeatRequired;
  }
}

enum Grade { excellent, good, satisfy, failed, courseRepeatRequired }
