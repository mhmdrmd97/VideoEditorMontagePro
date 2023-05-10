import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/global_notifier.dart';

final meScreenAllRenderer =
    StateNotifierProvider<GlobalNotifier, bool>((ref) {
  return GlobalNotifier();
});
