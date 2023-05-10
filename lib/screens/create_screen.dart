import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/CreateScreen/CreateScreenModels/create_screen_projects_cards_model.dart';
import 'package:video_editor/Logic/CreateScreen/create_screen_collector.dart';
import 'package:video_editor/Logic/CreateScreen/create_screen_renderer.dart';
import 'package:video_editor/Theme/theme_global.dart';
import 'package:video_editor/screens/create_project_screen.dart';
import 'package:video_editor/widgets/create_project_container.dart';
import 'package:video_editor/widgets/lists/list_projects.dart';
import 'package:video_editor/widgets/project_container.dart';

class CreateScreen extends ConsumerStatefulWidget {
  const CreateScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreateScreenState();
}

class _CreateScreenState extends ConsumerState<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    final createScreenAllWatcher = ref.watch(createScreenAllRenderer);

    return Scaffold(
      backgroundColor: ThemeGlobal.selectedTheme.bgColor,
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>  CreateProjectScreen(project: ProjectCardModel(id: "${Random().nextInt(1000)*CreateScreenCollector.projectCards.projectCards.length}", title: "New Project", subTitle: "Last Seen : ${DateTime.now().day<10?"0":""}${DateTime.now().day}/${DateTime.now().month<10?"0":""}${DateTime.now().month}/${DateTime.now().year}", image: "assets/devilish")),
              ));
                  },
                  child: const CreateProjectContainer()),
              Expanded(
                  child: ListProjects())
            ],
          ),
        )
      ]),
    );
  }
}
