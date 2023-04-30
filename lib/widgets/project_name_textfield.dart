
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/CreateScreen/CreateScreenModels/create_screen_projects_cards_model.dart';

class ProjectNameTextField extends ConsumerStatefulWidget {
   ProjectNameTextField({
    super.key, required this.project
  });
   ProjectCardModel project;

  @override
  ConsumerState<ProjectNameTextField> createState() =>
      _ProjectNameTextFieldState();
}

class _ProjectNameTextFieldState extends ConsumerState<ProjectNameTextField> {
  @override
  Widget build(BuildContext context) {
     
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: TextField(
        controller: widget.project.projectNameEditor.projectNameTextControler ,
        onChanged: (value) {

          setState(() {
          widget.project.projectNameEditor
              .setText(newProjectName: value);
          });
        },
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
            hintText: "Enter Project Name",
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white, width: 1.0),
                borderRadius: BorderRadius.circular(32.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red[700]!, width: 2.0),
                borderRadius: BorderRadius.circular(32.0))),
      ),
    );
  }
}
