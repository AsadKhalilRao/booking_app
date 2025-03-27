import 'package:flutter/material.dart';

class Bigtextticket extends StatelessWidget {
  final bool? isColor;
  final String bigtextticket;
  final String textAlign;
  final TextAlign align;
  const Bigtextticket(
      {super.key,
      required this.bigtextticket,
      this.textAlign = "start",
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(bigtextticket,
        textAlign: align,
        style: TextStyle(
            color: isColor == null ? Colors.white : Colors.black,
            fontSize: 15));
  }
}
