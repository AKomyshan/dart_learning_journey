import 'package:talker/talker.dart';

final class TaskStartingLog extends TalkerLog {
  TaskStartingLog(int id) : super('Task "$id" starting');

  @override
  String get title => 'Lesson 8';

  @override
  String get key => 'lesson_8_log_key';

  @override
  AnsiPen get pen => AnsiPen()..yellow();
}