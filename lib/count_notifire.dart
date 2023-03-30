import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_lesson/state.dart';

class CounterNotifier extends StateNotifier<CountState> {
  CounterNotifier() : super(CountState());

  void increment() {
    state = state.copyWith(count: ++state.count);
  }

  void addName() {
    state = state.copyWith(name: state.name);
  }
}
