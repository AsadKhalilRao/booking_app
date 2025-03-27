import 'package:flutter/material.dart';

class Smalltextticket extends StatelessWidget {
  final String ticketTextsmall;
  final bool? isColor;
  const Smalltextticket(
      {super.key, required this.ticketTextsmall, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(ticketTextsmall,
        style: TextStyle(
            color: isColor == null ? Colors.white : Colors.black,
            fontSize: 15));
  }
}
