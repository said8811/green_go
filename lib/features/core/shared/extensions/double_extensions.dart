extension DoubleX on double? {
  double get zeroOnNull => this == null ? 0.0 : this!;
}
