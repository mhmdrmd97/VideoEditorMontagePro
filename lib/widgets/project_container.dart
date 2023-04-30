import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/CreateScreen/CreateScreenModels/create_screen_projects_cards_model.dart';
import 'package:video_editor/Logic/CreateScreen/create_screen_collector.dart';
import 'package:video_editor/Logic/CreateScreen/create_screen_renderer.dart';
import 'package:video_editor/screens/create_project_screen.dart';

class ProjectContainer extends ConsumerStatefulWidget {
  ProjectContainer({super.key, required this.project});
  ProjectCardModel project;
  @override
  ConsumerState<ProjectContainer> createState() => _ProjectContainerState();
}

class _ProjectContainerState extends ConsumerState<ProjectContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
         
          
        },
        child: Card(
          shadowColor: Colors.white,
          color: const Color.fromARGB(255, 19, 21, 23),
          child: ListTile(
            leading: Image(image: AssetImage(widget.project.image)),
            trailing: Container(
              width: MediaQuery.of(context).size.width / 4,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        CreateScreenCollector.projectCards
                            .removeProjectById(projectId: widget.project.id);
                        ref
                            .read(createScreenListProjectsRenderer.notifier)
                            .render();
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Color.fromARGB(255, 253, 77, 61),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            title: Text(
              widget.project.title,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              widget.project.subTitle,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
