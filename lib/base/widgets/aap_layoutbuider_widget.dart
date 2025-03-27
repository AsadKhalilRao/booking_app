import 'package:flutter/material.dart';

class AapLayoutbuiderWidget extends StatelessWidget {
  final bool? isColor;
  final int randomDivider;
  final double smallcirclewidth;
  final double smallcircleheight;
  const AapLayoutbuiderWidget(
      {super.key,
      required this.randomDivider,
      this.smallcirclewidth = 2,
      this.smallcircleheight = 2,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      // print("WIDTH:${constraints.constrainWidth()}");
      return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              (constraints.constrainWidth() / randomDivider).floor(),
              (index) => Container(
                    width: smallcirclewidth,
                    height: smallcircleheight,
                    decoration: BoxDecoration(
                        color: isColor == null
                            ? Colors.white
                            : Colors.grey.shade300,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  )));
    });
  }
}
