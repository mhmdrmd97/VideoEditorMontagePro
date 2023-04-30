import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/CreateScreen/create_screen_collector.dart';
import 'package:video_editor/Logic/CreateScreen/create_screen_renderer.dart';
import 'package:video_editor/widgets/project_container.dart';

class ListProjects extends ConsumerStatefulWidget {
  const ListProjects({
    super.key,
  });

  @override
  ConsumerState<ListProjects> createState() => _ListProjectsState();
}

class _ListProjectsState extends ConsumerState<ListProjects> {
  @override
  Widget build(BuildContext context) {
    final listWatcher = ref.watch(createScreenListProjectsRenderer);
    return ListView.builder(
        itemCount: CreateScreenCollector.projectCards.projectCards.length,
        itemBuilder: (context, index) {
          return ProjectContainer(
            project: CreateScreenCollector.projectCards.projectCards[index],
          );
        });
  }
}
