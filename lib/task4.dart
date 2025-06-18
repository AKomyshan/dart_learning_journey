/// Завдання 4: Тернарний оператор
/// 1) Створіть змінну temperature.
/// 2) Використайте тернарний оператор, щоб визначити:
/// Якщо більше 25 — “Тепло”.
/// Якщо менше або дорівнює 25 — “Прохолодно”.
/// 3) Потім створіть ще один тернарний оператор:
/// Якщо менше 10 — вивести “Дуже холодно”.
///

TemperatureState task4(int temperature) => temperature > 25
    ? TemperatureState.warm
    : temperature < 10
        ? TemperatureState.veryCold
        : TemperatureState.cold;

enum TemperatureState { warm, cold, veryCold }
