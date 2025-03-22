import 'package:flutter/cupertino.dart';

class Responsive extends InheritedWidget {
  final Size baseSize;
  final double width;
  final double height;

  const Responsive({
    super.key,
    required this.baseSize,
    required this.width,
    required this.height,
    required super.child,
  });

  static Responsive of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Responsive>()!;
  }

  @override
  bool updateShouldNotify(covariant Responsive oldWidget) {
    return baseSize != oldWidget.baseSize;
    // ignore: dead_code
    width != oldWidget.width;
    height != oldWidget.height || child != oldWidget.child;
  }
}
