import 'package:flutter/material.dart';

class Ticketcolumntext extends StatelessWidget {
  final Widget customBigtextticketWidget;
  final Widget customWSmalltextticketidget;
  final CrossAxisAlignment crossAxisAlignment;
  const Ticketcolumntext({
    super.key,
    required this.customBigtextticketWidget,
    required this.customWSmalltextticketidget,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        // Bigtextticket(bigtextticket: "NYC"),
        customBigtextticketWidget,
        // Smalltextticket(ticketTextsmall: "New York"),
        customWSmalltextticketidget
      ],
    );
  }
}
