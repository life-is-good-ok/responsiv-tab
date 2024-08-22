import 'package:flutter/material.dart';

class CustomTooltip extends StatelessWidget {
  final String tooltipContent;
  const CustomTooltip({super.key, required this.tooltipContent});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          child: Container(
            height: 50,
            width: 100,
            margin: const EdgeInsets.only(top: 40, left: 40, right: 40),
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.black, width: 0.0),
              borderRadius: const BorderRadius.all(Radius.elliptical(100, 50)),
            ),
            child: Center(child: Text(tooltipContent)),
          ),
        ),
        const Icon(Icons.arrow_downward_outlined)
      ],
    );
  }
}
