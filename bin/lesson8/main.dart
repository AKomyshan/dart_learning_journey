import 'package:dart_learning_journey/lesson8/aop/aspect_oriented.dart';
import 'package:dart_learning_journey/lesson8/index.dart';

import 'package:talker/talker.dart';

void main() {
  final Talker talker = Talker(settings: TalkerSettings(colors: {TalkerLogType.verbose.key: AnsiPen()..magenta()}));
  final AspectOriented lesson8aop = AspectOriented(talker);

  lesson8aop.run(libraryAnchor: reflectionAnchor);
}
