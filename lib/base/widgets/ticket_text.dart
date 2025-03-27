import 'package:flutter/material.dart';

class TicketText extends StatelessWidget {
  final String ticketText;
  final double ticketTextSize;
  // Type of colorText is Color
  final Color colorText;

  const TicketText({
    super.key,
    required this.ticketText,
    required this.colorText,
    required this.ticketTextSize // Use 'required' for mandatory parameters
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ticketText,
      style: TextStyle(color: colorText,
      fontSize:ticketTextSize),
    );
  }
}
