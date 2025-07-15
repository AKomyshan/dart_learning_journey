import 'package:dart_learning_journey/lesson8/aop/aspect_oriented.dart';
import 'package:dart_learning_journey/lesson8/index.dart';
import 'package:dart_learning_journey/shared/logging.dart';

void main() {
  final talker = getLogger();

  final lesson8 = AspectOriented(talker);

  lesson8.run(libraryAnchor: reflectionAnchor);
}
