import 'package:dart_learning_journey/lesson11/constants.dart';

Future<String> fetchName() => Future.delayed(Duration(seconds: Constants.task1DelayInSeconds), () => 'Anton');

Future<String> fetchAge() => Future.delayed(Duration(milliseconds: Constants.task2DelayInMilliseconds), () => '25');
