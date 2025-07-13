import 'package:talker/talker.dart';

Talker getLogger() => Talker(
    settings: TalkerSettings(
        colors: {TalkerLogType.verbose.key: AnsiPen()..magenta(), TalkerLogType.debug.key: AnsiPen()..cyan()}));
