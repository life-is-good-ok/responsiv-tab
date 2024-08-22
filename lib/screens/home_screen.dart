import 'package:flutter/material.dart';
import 'package:responsive_tablet/screens/boxes_screen.dart';
import 'package:responsive_tablet/screens/tablet_view_with_tooltip.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Responsive tablet",
        ),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TabletViewWithTooltip(),
              SizedBox(
                width: 50,
              ),
              SizedBox(
                width: 300,
                height: 500,
                child: BoxesScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
