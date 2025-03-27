import 'package:flutter/material.dart';

class Hotelcolumntext extends StatelessWidget {
  final String hotelColumnText;
  final double hotelColumnTextFontSize;
  final FontWeight fontWeight;
  final Color color;
  const Hotelcolumntext(
      {super.key,
      this.hotelColumnText = "",
      this.hotelColumnTextFontSize = 0.0,
      this.fontWeight = FontWeight.normal,
      this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.left,
      style: TextStyle(
          color: Colors.white,
          fontSize: hotelColumnTextFontSize,
          fontWeight: fontWeight),
      hotelColumnText,
    );
  }
}
