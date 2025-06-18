import 'package:test/test.dart';
import 'package:dart_learning_journey/task2.dart';

void main() {
  group('Task 2', () {
    final List<
        ({
          int number,
          bool expectedIsGreaterThen50,
          bool expectedIsLessThan100,
          bool expectedIsDivisibleBy5
        })> testCases = [
      (
        number: 10,
        expectedIsGreaterThen50: false,
        expectedIsLessThan100: true,
        expectedIsDivisibleBy5: true
      ),
      (
        number: 60,
        expectedIsGreaterThen50: true,
        expectedIsLessThan100: true,
        expectedIsDivisibleBy5: true
      ),
      (
        number: 101,
        expectedIsGreaterThen50: true,
        expectedIsLessThan100: false,
        expectedIsDivisibleBy5: false
      ),
      (
      number: 0,
      expectedIsGreaterThen50: false,
      expectedIsLessThan100: true,
      expectedIsDivisibleBy5: true
      ),
      (
      number: -10,
      expectedIsGreaterThen50: false,
      expectedIsLessThan100: true,
      expectedIsDivisibleBy5: true
      ),
    ];

    for (final testCase in testCases) {
      test('Task 2: should works', () {
        // act
        final (bool isGreaterThan50, bool isLessThan100, bool isDivisibleBy5) =
            task2(testCase.number);

        // assert
        expect(isGreaterThan50, testCase.expectedIsGreaterThen50);
        expect(isLessThan100, testCase.expectedIsLessThan100);
        expect(isDivisibleBy5, testCase.expectedIsDivisibleBy5);
      });
    }
  });
}
