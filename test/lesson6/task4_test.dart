import 'package:test/test.dart';
import 'package:dart_learning_journey/lesson6/task4.dart';

void main() {
  group('Task 4', () {
    test('Should returns warm when temp > 25', () {
      // act
      final TemperatureState result = task4(26);

      // assert
      expect(result, TemperatureState.warm);
    });

    test('Should returns cold when temp < 25 && > 10', () {
      // act
      final TemperatureState result = task4(17);

      // assert
      expect(result, TemperatureState.cold);
    });

    test('Should returns veryCold when temp > 10', () {
      // act
      final TemperatureState result = task4(-5);

      // assert
      expect(result, TemperatureState.veryCold);
    });
  });
}