import 'package:dart_learning_journey/lesson6/task1.dart';

void main() {
  final double width = 18.4;
  final double height = 30.9;

  final (double area, double perimeter, int fullSquares1x1) = task1(width, height);

  print('Area: ${area.toStringAsFixed(1)}');
  print('Perimeter: ${perimeter.toStringAsFixed(1)}');
  print('Full Squares 1x1: $fullSquares1x1');
}
