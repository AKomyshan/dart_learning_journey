import 'package:meta/meta.dart';

@immutable
class Task {
  final int order;

  const Task({this.order = 0});
}

const task = Task();
