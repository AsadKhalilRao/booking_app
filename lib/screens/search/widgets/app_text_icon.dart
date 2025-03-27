import 'package:flutter/material.dart';

class AppTextIcon extends StatelessWidget {
  final String appText;
  final IconData appIcon;
  const AppTextIcon({super.key, this.appText = "", required this.appIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(children: [
        Icon(
          appIcon,
          color: const Color(0xFFBFC2DF),
          size: 24.0,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(appText, style: const TextStyle(fontSize: 15))
      ]),
    );
  }
}
