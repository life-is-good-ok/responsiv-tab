import 'package:flutter/material.dart';
import 'package:responsive_tablet/screens/border_container.dart';
import 'package:responsive_tablet/screens/custom_tooltip.dart';
import 'package:responsive_tablet/screens/tablet_view.dart';

class TabletViewWithTooltip extends StatelessWidget {
  const TabletViewWithTooltip({super.key});

  @override
  Widget build(BuildContext context) {
    var canvasWidth = MediaQuery.sizeOf(context).width;
    var screenWidth = canvasWidth / 4;
    var screenHeight = screenWidth * 1.6;
    const double top = -85;
    const double left = -62;
    return SizedBox(
      height: screenHeight,
      width: screenWidth,
      child: const BorderContainer(
        borderColor: Colors.purple,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            TabletView(),
            Positioned(
              top: top,
              left: left,
              child: CustomTooltip(
                tooltipContent: '1',
              ),
            ),
            Positioned(
              top: -90,
              right: -75,
              child: CustomTooltip(
                tooltipContent: '2',
              ),
            ),
            Positioned(
              bottom: 50,
              right: -44,
              child: CustomTooltip(
                tooltipContent: '3',
              ),
            ),
            // Positioned(
            //   left: 180,
            //   child: BorderContainer(
            //     child: Text(
            //       "Width is $screenWidth\nLeft is $left\nAspect ratio is $aspectRatio\n left / AS = ${180 / aspectRatio}",
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
