import 'package:flutter/material.dart';

class AppTab extends StatelessWidget {
  final String tabText;
  final bool borderRadius;
  final bool color;
  const AppTab(
      {super.key,
      this.tabText = "",
      this.borderRadius = false,
      this.color = false});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
            color: color == true ? Colors.white : Colors.transparent,
            borderRadius: borderRadius == true
                ? const BorderRadius.horizontal(right: Radius.circular(30))
                : const BorderRadius.horizontal(left: Radius.circular(30))),
        width: screenWidth * .42,
        padding: const EdgeInsets.symmetric(vertical: 7),
        child: Center(child: Text(tabText)));
  }
}
