import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/MainScreen/main_screen_collector.dart';
import 'package:video_editor/Logic/MainScreen/main_screen_renderer.dart';
import 'package:video_editor/screens/create_screen.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final mainScreenWatcher = ref.watch(mainScreenAllRenderer);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 21, 23),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 19, 21, 23),
        leading: const Image(image: AssetImage("assets/crown-royalty.gif")),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.tv_sharp)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.help)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      body:  MainScreenCollector.page.selectedPage.screen,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: MainScreenCollector.page.selectedPage.index,
          backgroundColor: const Color.fromARGB(255, 19, 21, 23),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(color: Colors.white),
          onTap: (index) {
            MainScreenCollector.page.setSelectedPageByIndex(index: index);
            ref.read(mainScreenAllRenderer.notifier).render();
          },
          items:  [ ...MainScreenCollector.page.pages.map((page) => BottomNavigationBarItem(
                backgroundColor: const Color.fromARGB(255, 19, 21, 23),
                icon: page.pageIcon,
                label: page.name ),),
          ]),
    );
  }
}
