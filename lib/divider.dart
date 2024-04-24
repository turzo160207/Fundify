import 'package:flutter/material.dart';

class DottedDivider extends StatelessWidget {
  final double height;
  final Color color;
  final double thickness;
  final double dotSpacing;

  const DottedDivider({
    Key? key,
    this.height = 1,
    this.color = Colors.grey,
    this.thickness = 1,
    this.dotSpacing = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double width = constraints.constrainWidth();
        final int numberOfDots = (width / (2 * dotSpacing)).floor();
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(numberOfDots, (_) {
            return Container(
              width: dotSpacing,
              height: height,
              color: color,
            );
          }),
        );
      },
    );
  }
}