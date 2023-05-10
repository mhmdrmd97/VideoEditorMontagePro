import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/CreateScreen/create_screen_renderer.dart';
import 'package:video_editor/Logic/MainScreen/main_screen_collector.dart';
import 'package:video_editor/Logic/MainScreen/main_screen_renderer.dart';
import 'package:video_editor/Logic/MeScreen/Me_screen_Renderer.dart';
import 'package:video_editor/Logic/MixinScreen/Mixin_Screen_Renderer.dart';
import 'package:video_editor/Logic/SearchScreen/Search_Screen_Renderer.dart';
import 'package:video_editor/Theme/theme_global.dart';
import 'package:video_editor/screens/create_screen.dart';

class MainScreen extends ConsumerStatefulWidget {
  MainScreen({super.key});
  bool themeToggle = true;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final mainScreenWatcher = ref.watch(mainScreenAllRenderer);
    return Scaffold(
      backgroundColor: ThemeGlobal.selectedTheme.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ThemeGlobal.selectedTheme.bgColor,
        leading: const Image(image: AssetImage("assets/crown-royalty.gif")),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.tv_sharp,
                color: ThemeGlobal.selectedTheme.textColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help,
                color: ThemeGlobal.selectedTheme.textColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: ThemeGlobal.selectedTheme.textColor,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: ThemeGlobal.selectedTheme.textColor,
              )),
          Switch.adaptive(
            activeColor: ThemeGlobal.selectedTheme.textColor,
              value: widget.themeToggle,
              onChanged: (value) {
                setState(
                  () {
                    widget.themeToggle = value;
                    if (widget.themeToggle == false) {
                      ThemeGlobal.setSelectedTheme(theme: ThemeGlobal.theme1);
                      return;
                    }
                      ThemeGlobal.setSelectedTheme(theme: ThemeGlobal.theme2);
                  },
                );
                  ref.read(mixinScreenAllRenderer.notifier).render();
                  ref.read(createScreenAllRenderer.notifier).render();
                  ref.read(meScreenAllRenderer.notifier).render();
                  ref.read(searchScreenAllRenderer.notifier).render();
                  ref.read(createScreenListButtonRenderer.notifier).render();


              })
        ],
      ),
      body: MainScreenCollector.page.selectedPage.screen,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: MainScreenCollector.page.selectedPage.index,
          backgroundColor: ThemeGlobal.selectedTheme.bgColor,
          selectedItemColor: ThemeGlobal.selectedTheme.textColor,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle:
              TextStyle(color: ThemeGlobal.selectedTheme.textColor),
          onTap: (index) {
            MainScreenCollector.page.setSelectedPageByIndex(index: index);
            ref.read(mainScreenAllRenderer.notifier).render();
          },
          items: [
            ...MainScreenCollector.page.pages.map(
              (page) => BottomNavigationBarItem(
                  backgroundColor: ThemeGlobal.selectedTheme.bgColor,
                  icon: page.pageIcon,
                  label: page.name),
            ),
          ]),
    );
  }
}
