import 'package:flutter/material.dart';

class ProjectNameTextEditor {
  TextEditingController projectNameTextControler = TextEditingController();
  String projectNameText = "";

  void setText({required String newProjectName}) {
    projectNameText = newProjectName;
   
  }

  void resetTextControllerWithText() {
    projectNameText = "";
    projectNameTextControler.clear();
  }

  void resetOnDisposeTextController() {
    projectNameTextControler.clear();
  }
}
