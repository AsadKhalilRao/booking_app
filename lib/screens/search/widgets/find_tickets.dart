import 'package:flutter/material.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xD91130CE)),
      child: const Center(
          child: Text(
        "find tickets",
        style: TextStyle(fontSize: 18, color: Colors.white),
      )),
    );
  }
}
