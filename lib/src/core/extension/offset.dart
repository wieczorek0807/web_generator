import 'dart:ui';

extension OffsetExt on Offset {
  Offset copyWith({double? dx, double? dy}) => Offset(dx ?? this.dx, dy ?? this.dy);
}
