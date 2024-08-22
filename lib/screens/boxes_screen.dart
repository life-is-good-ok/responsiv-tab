import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_tablet/notifiers/counter_notifier.dart';

class BoxesScreen extends ConsumerWidget {
  const BoxesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int count = ref.watch(counterProvider);

    return count % 2 == 0
        ? GridView.builder(
            itemCount: count,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${index + 1}"),
              );
            },
          )
        : ListView.builder(
            itemCount: count,
            itemBuilder: (context, index) {
              return ColoredBox(
                color: index % 2 == 0 ? Colors.red : Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${index + 1}"),
                ),
              );
            },
          );
  }
}
