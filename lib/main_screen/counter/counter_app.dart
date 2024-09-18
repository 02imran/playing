import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterApp extends ConsumerWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(countNotifier);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [Center(child: Text(data.toString()))],
      ),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(onPressed: () {
            ref.read(countNotifier.notifier).increament();
          }),
          FloatingActionButton(onPressed: () {
            ref.read(countNotifier.notifier).decrement();
          }),
        ],
      ),
    );
  }
}

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  increament() {
    print("state $state");
    state = state  + 1;
  }

  decrement() {
    print("state $state");
    state = state - 1;
  }
}

final countNotifier =
    StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());
