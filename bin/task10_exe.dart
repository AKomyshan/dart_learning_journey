//Завдання 10: Break і Continue
//1) Створіть цикл for від 1 до 20.
//2) Якщо число ділиться на 3 без залишку — пропустіть його (continue).
//3) Якщо число більше 15 — зупиніть цикл (break).
//Виведіть тільки ті числа, які пройшли обидві перевірки.

void main() {
  List<int> numbers = List.generate(20, (index) => index + 1); // пічалька що неможна як у інших - просто [1..20]
  for (final number in numbers) {
    if (number % 3 == 0) {
      continue;
    }

    if (number > 15) {
      break;
    }

    print(number);
  }
}
