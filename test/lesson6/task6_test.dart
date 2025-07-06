import 'package:dart_learning_journey/lesson6/task6.dart';
import 'package:test/test.dart';

void main() {
  group('Task 6', () {
    test('Should works 1', () {
      // arrange
      final int examScore = 56;

      // act
      final Grade result = task6(examScore);

      // assert
      expect(result, Grade.failed);
    });

    test('Should works 2', () {
      // arrange
      final int examScore = 89;

      // act
      final Grade result = task6(examScore);

      // assert
      expect(result, Grade.good);
    });

    test('Should works 3', () {
      // arrange
      final int examScore = 91;

      // act
      final Grade result = task6(examScore);

      // assert
      expect(result, Grade.excellent);
    });
  });
}
