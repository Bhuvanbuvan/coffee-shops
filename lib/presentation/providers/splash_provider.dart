import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashProvider = StateNotifierProvider<SplashNotifier, bool>(
  (ref) => SplashNotifier(),
);

class SplashNotifier extends StateNotifier<bool> {
  SplashNotifier() : super(false) {
    _init();
  }

  _init() async {
    await Future.delayed(const Duration(seconds: 3));
    state = true;
  }
}
