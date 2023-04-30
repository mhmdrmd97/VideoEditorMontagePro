import 'package:flutter/material.dart';
import 'package:video_editor/screens/create_screen.dart';
import 'package:video_editor/screens/me_screen.dart';
import 'package:video_editor/screens/mix_screen.dart';
import 'package:video_editor/screens/search_screen.dart';

class MainScreenPageModel {
  PageIModel selectedPage = PageIModel(index: 0, name: "Mix",pageIcon: const Icon(Icons.dashboard_customize),screen: const MixScreen());
  List<PageIModel> pages = [
    PageIModel(index: 0, name: "Mix",pageIcon: const Icon(Icons.dashboard_customize),screen: const MixScreen()),
    PageIModel(index: 1, name: "Search",pageIcon: const Icon(Icons.search_rounded),screen: const SearchScreen()),
    PageIModel(index: 2, name: "Create",pageIcon: const Icon(Icons.add_circle),screen: const CreateScreen()),
    PageIModel(index: 3, name: "Me",pageIcon: const Icon(Icons.help),screen: const MeScreen())
  ];

  void setSelectedPageByIndex({index}) {
    selectedPage = [...pages.where((element) => element.index == index)][0];
  }
}

class PageIModel {
  late int index;
  late String name;
  late Icon pageIcon;
  late Widget screen;

  PageIModel({required this.index, required this.name,required this.pageIcon,required this.screen});
}
