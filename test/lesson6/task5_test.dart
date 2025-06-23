import 'package:test/test.dart';
import 'package:dart_learning_journey/lesson6/task5.dart';

void main() {
  group('Task 5', () {
    test('Should throw an error when totalQuestions <= 0', () {
      expect(() => task5(1, 1, 0), throwsA(isA<ArgumentError>()));
    });

    test('Should works', () {
      // arrange
      final int correctAnswers = 17;
      final int mistakes = 3;
      final int totalQuestions = 20;

      // act
      final double result = task5(correctAnswers, mistakes, totalQuestions);

      // assert
      expect(result, 15.5);
    });
  });
}