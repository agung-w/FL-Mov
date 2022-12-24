import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VerticalDashedDivider extends StatelessWidget {
  const VerticalDashedDivider({Key? key, this.width = 1}) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainHeight();
        final dashWidth = width;
        const dashHeight = 8.0;
        final dashCount = (boxWidth / (2 * dashHeight) + 4).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.vertical,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: const DecoratedBox(
                decoration: BoxDecoration(color: Colors.black26),
              ),
            );
          }),
        );
      },
    );
  }
}
