import 'package:talker/talker.dart';

final class TaskCompletedLog extends TalkerLog{
  TaskCompletedLog(int id) : super('Task "$id" completed');

  @override
  String get title => 'Lesson 8';

  @override
  String get key => 'lesson_8_log_key';

  @override
  AnsiPen get pen => AnsiPen()..green();
}