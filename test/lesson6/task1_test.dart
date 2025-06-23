import 'package:test/test.dart';
import 'package:dart_learning_journey/lesson6/task1.dart';

void main() {
  group('Task 1', () {
    final List<
        ({
          double width,
          double height,
          double expectedArea,
          double expectedPerimeter,
          int expectedFullSquares
        })> testCases = [
      (
        width: 10.0,
        height: 5.0,
        expectedArea: 50.0,
        expectedPerimeter: 30.0,
        expectedFullSquares: 50
      ),
      (
        width: 7.0,
        height: 7.0,
        expectedArea: 49.0,
        expectedPerimeter: 28.0,
        expectedFullSquares: 49
      ),
      (
        width: 1.0,
        height: 1.0,
        expectedArea: 1.0,
        expectedPerimeter: 4.0,
        expectedFullSquares: 1
      ),
      (
        width: 2.5,
        height: 3.0,
        expectedArea: 7.5,
        expectedPerimeter: 11.0,
        expectedFullSquares: 7
      ),
      (
        width: 0.0,
        height: 5.0,
        expectedArea: 0.0,
        expectedPerimeter: 10.0,
        expectedFullSquares: 0
      ),
      (
        width: 5.0,
        height: 0.0,
        expectedArea: 0.0,
        expectedPerimeter: 10.0,
        expectedFullSquares: 0
      ),
      (
        width: 0.0,
        height: 0.0,
        expectedArea: 0.0,
        expectedPerimeter: 0.0,
        expectedFullSquares: 0
      ),
    ];

    for (final testCase in testCases) {
      test('Task1: Should works', () {
        // arrange & act
        final (double area, double perimeter, int fullSquares1x1) =
            task1(testCase.width, testCase.height);

        // assert
        expect(area, testCase.expectedArea);
        expect(perimeter, testCase.expectedPerimeter);
        expect(fullSquares1x1, testCase.expectedFullSquares);
      });
    }
  });
}
