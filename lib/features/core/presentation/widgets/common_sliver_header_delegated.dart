import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CommonSliverHeaderDelegate implements SliverPersistentHeaderDelegate {
  final Widget child;
  final double? extent;

  const CommonSliverHeaderDelegate({required this.child, this.extent});

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) => false;

  @override
  double get maxExtent => extent ?? 60;

  @override
  double get minExtent => extent ?? 60;

  @override
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration => null;

  @override
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  TickerProvider? get vsync => null;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }
}
