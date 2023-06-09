import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/global_notifier.dart';

final createScreenAllRenderer =
    StateNotifierProvider<GlobalNotifier, bool>((ref) {
  return GlobalNotifier();
});

final createScreenListProjectsRenderer =
    StateNotifierProvider<GlobalNotifier, bool>((ref) {
  return GlobalNotifier();
});

final createScreenListButtonRenderer =
    StateNotifierProvider<GlobalNotifier, bool>((ref) {
  return GlobalNotifier();
});
