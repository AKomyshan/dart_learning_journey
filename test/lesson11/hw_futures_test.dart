import 'package:dart_learning_journey/lesson11/constants.dart';
import 'package:dart_learning_journey/lesson11/hw_futures.dart';
import 'package:fake_async/fake_async.dart';
import 'package:test/test.dart';

void main() {
  group('fetchName', () {
    test('should returns "Anton" after delay', () {
      fakeAsync((fa) {
        final Future<String> sut = fetchName();

        sut.then((result) {
          expect(result, 'Anton');
        });

        fa.elapse(Duration(seconds: Constants.task1DelayInSeconds));
      });
    });
  });
}
