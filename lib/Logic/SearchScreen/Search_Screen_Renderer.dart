import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/global_notifier.dart';

final searchScreenAllRenderer =
    StateNotifierProvider<GlobalNotifier, bool>((ref) {
  return GlobalNotifier();
});
