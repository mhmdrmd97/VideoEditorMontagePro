import 'package:flutter_riverpod/flutter_riverpod.dart';

class GlobalNotifier extends StateNotifier<bool> {
  GlobalNotifier() : super(false);

  void render() {
    state = !state;
  }
}
