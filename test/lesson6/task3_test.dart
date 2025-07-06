import 'package:dart_learning_journey/lesson6/task3.dart';
import 'package:test/test.dart';

void main() {
  group('Task 3', () {
    test('Should returns true and false when money is not a problem and store is open', () {
      // arrange
      final bool moneyNotAProblem = true;
      final bool isStoreOpen = true;

      // act
      final (bool canBuy, bool shouldWait) = task3(moneyNotAProblem, isStoreOpen);

      // assert
      expect(canBuy, isTrue);
      expect(shouldWait, isFalse);
    });

    test('Should returns false and true when money is not a problem and store is closed', () {
      // arrange
      final bool moneyNotAProblem = true;
      final bool isStoreOpen = false;

      // act
      final (bool canBuy, bool shouldWait) = task3(moneyNotAProblem, isStoreOpen);

      // assert
      expect(canBuy, isFalse);
      expect(shouldWait, isTrue);
    });

    test('Should returns false and true when money is a big problem and store is open', () {
      // arrange
      final bool moneyNotAProblem = false;
      final bool isStoreOpen = true;

      // act
      final (bool canBuy, bool shouldWait) = task3(moneyNotAProblem, isStoreOpen);

      // assert
      expect(canBuy, isFalse);
      expect(shouldWait, isTrue);
    });
  });
}