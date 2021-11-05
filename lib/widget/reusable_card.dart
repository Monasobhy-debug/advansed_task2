import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color? color;
  final Alignment alignment;

  final Animation<double> animation;

  ReusableCard({
    required this.color,
    required this.alignment,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: animation,
      alignment: alignment,
      child: Container(
        height: 100.0,
        width: 100.0,
        color: color,
      ),
    );
  }
}
