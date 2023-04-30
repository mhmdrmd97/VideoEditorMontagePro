import 'package:flutter/material.dart';
import 'package:video_editor/Logic/CreateScreen/CreateScreenModels/create_screen_project_name_text_editor.dart';

class ProjectCardsModel {
  late ProjectCardModel selectedProjectCard;
  List<ProjectCardModel> projectCards = [
    ProjectCardModel(
        id: "1",
        title: "Title 1",
        subTitle: "Last seen 01/12/2022",
        image: "assets/devilish.png",
        ),
    ProjectCardModel(
        id: "2",
        title: "Title 2",
        subTitle: "Last seen 02/12/2022",
        image: "assets/devilish.png",
        ),
    ProjectCardModel(
        id: "3",
        title: "Title 3",
        subTitle: "Last seen 03/12/2022",
        image: "assets/devilish.png",
        ),
    ProjectCardModel(
        id: "4",
        title: "Title 4",
        subTitle: "Last seen 04/12/2022",
        image: "assets/devilish.png",
        ),
    ProjectCardModel(
        id: "5",
        title: "Title 5",
        subTitle: "Last seen 05/12/2022",
        image: "assets/devilish.png",
        ),
        
  ];

  void setSelectedProjectById({id}) {
    selectedProjectCard =
        [...projectCards.where((element) => element.id == id)][0];
  }

  void addNewProject({required ProjectCardModel newProject}) {
    projectCards = [...projectCards, newProject];
  }

  void removeProjectById({required String projectId}) {
    projectCards = [
      ...projectCards.where((element) => element.id != projectId)
    ];
  }
}

class ProjectCardModel {
  late String id;
  late String title;
  late String subTitle;
  late String image;
  ProjectNameTextEditor projectNameEditor= ProjectNameTextEditor();


  ProjectCardModel(
      {required this.id,
      required this.title,
      required this.subTitle,
      required this.image,
      });
}
