import 'package:flutter/material.dart';

class TicketPositionedCircel extends StatelessWidget {
  final double top;
  final bool? pos;
  const TicketPositionedCircel({
    this.pos,
    super.key,
    this.top = 0,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: pos == true ? 22 : null,
      right: pos == true ? null : 22,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            //Giving circle shape to the Container
            shape: BoxShape.circle,
            border: Border.all(width: 4)),
        child: const CircleAvatar(
          maxRadius: 5,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
