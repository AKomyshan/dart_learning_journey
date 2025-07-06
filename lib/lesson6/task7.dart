/// Завдання 7: Конструкція switch statement
/// 1) Створіть змінну dayNumber від 1 до 7.
/// 2) Використайте switch, щоб вивести:
/// Понеділок, Вівторок, …, Неділя.
/// 3) Якщо день не від 1 до 7 — вивести “Невірний номер дня”.
/// 4) Додатково: для вихідних (6, 7) вивести “Вихідний день 🎉”.
(DayOfTheWeek, bool isHolyday) task7(int dayNumber) {
  switch (dayNumber) {
    case 1: return (DayOfTheWeek.monday, false);
    case 2: return (DayOfTheWeek.tuesday, false);
    case 3: return (DayOfTheWeek.wednesday, false);
    case 4: return (DayOfTheWeek.thursday, false);
    case 5: return (DayOfTheWeek.friday, false);
    case 6: return (DayOfTheWeek.saturday, true);
    case 7: return (DayOfTheWeek.sunday, true);
    default: throw ArgumentError('Невірний номер дня');
  }
}

enum DayOfTheWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}