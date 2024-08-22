import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void increment() {
    state++;
  }
}

final counterProvider =
    NotifierProvider<CounterNotifier, int>(CounterNotifier.new);
