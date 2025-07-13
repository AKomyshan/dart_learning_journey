import 'package:dart_learning_journey/lesson11/constants.dart';

Future<String> fetchName() => Future.delayed(Duration(seconds: Constants.task1DelayInSeconds), () => 'Anton');
