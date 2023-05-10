import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/CreateScreen/create_screen_renderer.dart';
import 'package:video_editor/Theme/theme_global.dart';

class CreateProjectContainer extends ConsumerStatefulWidget {
  const CreateProjectContainer({
    super.key,
  });

  @override
  ConsumerState<CreateProjectContainer> createState() =>
      _CreateProjectContainerState();
}

class _CreateProjectContainerState
    extends ConsumerState<CreateProjectContainer> {
  @override
  Widget build(BuildContext context) {
    final createprojectbuttonwatcher =
        ref.watch(createScreenListButtonRenderer);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: BoxDecoration(
            gradient: ThemeGlobal.selectedTheme.createProjectButtonColor,
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.add_circle,
              color: ThemeGlobal.selectedTheme.textColor,
              size: 45.0,
            ),
            Text(
              "New Project",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: ThemeGlobal.selectedTheme.textColor,
                  fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}
