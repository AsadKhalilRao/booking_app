import 'package:booking_app/base/widgets/aap_layoutbuider_widget.dart';
import 'package:booking_app/base/widgets/big_dot.dart';
import 'package:flutter/material.dart';

class AirplaneDotWidget extends StatelessWidget {
  const AirplaneDotWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // DOT WIDGET
        const BigDot(),
        // AIR PLANE ICON
        Expanded(
            child: Stack(
          children: [
            const SizedBox(
              height: 30,
              child: AapLayoutbuiderWidget(
                randomDivider: 6,
              ),
            ),
            Center(
              // Transform is a WIDGET
              // rotate is a method in Tranform Widget
              child: Transform.rotate(
                //pi/2 where pi=3.142
                angle: 1.571,
                child: const Icon(
                  Icons.local_airport_rounded,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            )
          ],
        )), // DOT WIDGET
        const BigDot(),
      ],
    );
  }
}
