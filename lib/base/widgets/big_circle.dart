import 'package:flutter/material.dart';

class BigCircleDots extends StatelessWidget {
  final bool? isColor;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  const BigCircleDots(
      {super.key,
      // Default value of this.topLeft
      this.topLeft = 0,
      // Default value of this.topRight
      this.topRight = 0,
      // Default value of this.bottomLeft
      this.bottomLeft = 0,
      // Default value of this.bottomRight
      this.bottomRight = 0,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 20,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: isColor == null ? Colors.white : Colors.grey.shade300,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(topLeft),
                topRight: Radius.circular(topRight),
                bottomLeft: Radius.circular(bottomLeft),
                bottomRight: Radius.circular(bottomRight))),
      ),
    );
  }
}
