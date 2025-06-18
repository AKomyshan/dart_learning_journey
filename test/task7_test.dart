import 'package:test/test.dart';
import 'package:dart_learning_journey/task7.dart';

void main() {
  group('Task 7', () {
    test('Should return an error if day number invalid', () {
      expect(() => task7(8), throwsA(isA<ArgumentError>()));
    });

    test('Should returns day and isHolyday true', () {
      // act
      final (DayOfTheWeek result, bool isHolyday) = task7(6);

      // assert
      expect(result, DayOfTheWeek.saturday);
      expect(isHolyday, isTrue, reason: 'Не Вихідний день 🎉');
    });

    test('Should returns day and isHolyday false', () {
      // act
      final (DayOfTheWeek result, bool isHolyday) = task7(5);

      // assert
      expect(result, DayOfTheWeek.friday);
      expect(isHolyday, isFalse, reason: 'Не Вихідний день 🎉');
    });
  });
}