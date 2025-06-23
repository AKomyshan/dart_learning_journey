import 'package:test/test.dart';
import 'package:dart_learning_journey/lesson6/task8.dart';

void main() {
  group('Task 8', () {
    test('Should works', () {
      // arrange
      final int count = 10;

      // act
      final (List<int> enumerate, List<int> evenOnlyEnumerate, int sum) =
          task8(count);

      // assert
      expect(enumerate, equals([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
      expect(evenOnlyEnumerate, equals([2, 4, 6, 8, 10]));
      expect(sum, 55);
    });

    test('Should works - alt variant', () {
      // arrange
      final int count = 10;

      // act
      final (List<int> enumerate, List<int> evenOnlyEnumerate, int sum) =
      task8Alt(count);

      // assert
      expect(enumerate, equals([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
      expect(evenOnlyEnumerate, equals([2, 4, 6, 8, 10]));
      expect(sum, 55);
    });
  });
}
