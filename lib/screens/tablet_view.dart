import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_tablet/notifiers/counter_notifier.dart';
import 'package:responsive_tablet/screens/border_container.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return BorderContainer(
      borderColor: Colors.red,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Samsung Tab 25"),
          elevation: 6,
          leading: const Icon(Icons.abc_rounded),
          actions: const [Icon(Icons.car_crash)],
        ),
        body: const ColoredBox(
          color: Colors.brown,
        ),
        floatingActionButton: Consumer(
          builder: (_, ref, __) => FloatingActionButton(
            onPressed: () {
              log("Num of boxes is ${ref.read(counterProvider)}",
                  name: 'Angular');
              ref.read(counterProvider.notifier).increment();
            },
            child: const Icon(Icons.accessibility_sharp),
          ),
        ),
      ),
    );
  }
}
