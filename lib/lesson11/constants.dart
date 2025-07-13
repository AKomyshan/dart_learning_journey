class Constants {
  Constants._();

  static const task1DelayInSeconds = 2;
  static const task2DelayInMilliseconds = 1500;

  // some languages have already defined constants like: int.MaxValue, long.MaxValue
  // but looks like Dart have not.. https://github.com/dart-lang/sdk/blob/main/sdk/lib/_internal/vm/lib/math_patch.dart#L318C3-L318C35
  static const int pow2_32 = 1 << 32;
}