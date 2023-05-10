import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/SearchScreen/Search_Screen_Renderer.dart';
import 'package:video_editor/Theme/theme_global.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final searchScreenWatcher = ref.watch(searchScreenAllRenderer);
    return Scaffold(
      backgroundColor: ThemeGlobal.selectedTheme.bgColor,
      body: Center(
        child: Text(
          "Search Page",
          style: TextStyle(color: ThemeGlobal.selectedTheme.textColor),
        ),
      ),
    );
  }
}
