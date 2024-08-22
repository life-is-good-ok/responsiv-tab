import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  final Color borderColor;
  final Widget child;
  const BorderContainer(
      {super.key, this.borderColor = Colors.red, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
      ),
      child: child,
    );
  }
}
