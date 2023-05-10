import 'package:flutter/material.dart';

class SceneViewerModel {
  PageController sceneController = PageController(initialPage: 0);
  List<SceneModel> mixinScenes = [
    SceneModel(
        aspectRatio: AspectRatios.tiktok,
        id: "0",
        comments: 4,
        likes: 4,
        downloads: 0.5,
        imgUrl: "user1.jpg",
        shares: 2,
        timeSeconds: 60,
        textAboveFooter: "#Modern Agency"),
    SceneModel(
        aspectRatio: AspectRatios.facebook,
        id: "1",
        comments: 33,
        likes: 22,
        downloads: 1.5,
        imgUrl: "user2.jpg",
        shares: 4,
        timeSeconds: 135,
        textAboveFooter: "#Feel the Spirit"),
    SceneModel(
        aspectRatio: AspectRatios.instagram,
        id: "7",
        comments: 24,
        likes: 45,
        downloads: 3.5,
        imgUrl: "user3.jpg",
        shares: 8,
        timeSeconds: 160,
        textAboveFooter: "#Each Blood Drop"),
  ];
}

class SceneModel {
  String id;
  double likes;
  double shares;
  double comments;
  double downloads;
  double timeSeconds;
  AspectRatioModel aspectRatio = AspectRatios.tiktok;
  String imgUrl = "";
  String textAboveFooter = "";

  SceneModel(
      {this.id = "0",
      required this.aspectRatio,
      this.likes = 0,
      this.shares = 0,
      this.comments = 0,
      this.downloads = 0,
      this.timeSeconds = 0,
      this.imgUrl = "user1.jpg",
      this.textAboveFooter = "ModernAgencey"
      });
}

class AspectRatios {
  static AspectRatioModel tiktok =
      AspectRatioModel(name: "TikTok", value: "9:16");
  static AspectRatioModel youtube =
      AspectRatioModel(name: "Youtube", value: "16:9");
  static AspectRatioModel paperP =
      AspectRatioModel(name: "Paper Portrait", value: "3:4");
  static AspectRatioModel paperL =
      AspectRatioModel(name: "Paper LandScape", value: "4:3");
  static AspectRatioModel instagram =
      AspectRatioModel(name: "Instagram", value: "1:1");
  static AspectRatioModel facebook =
      AspectRatioModel(name: "Facebook", value: "4:5");
  static AspectRatioModel cenimaScope =
      AspectRatioModel(name: "CenimaScope", value: "2.35:1");
}

class AspectRatioModel {
  String name;
  String value;

  AspectRatioModel({this.name = "Wide Screen", this.value = "1:1"});
}
