import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/global_notifier.dart';

class ThemeGlobal {
  static ThemeModel theme1 = ThemeModel(
      buttonbgColor: Colors.red[700]!,
      bgColor: const Color.fromARGB(255, 19, 21, 23),
      textColor: Colors.white,
      createProjectButtonColor:  const LinearGradient(colors: [
              Color.fromARGB(255, 253, 77, 61),
              Color.fromARGB(255, 253, 123, 50)
            ])
      );
  static ThemeModel theme2 = ThemeModel(
      buttonbgColor: Color.fromARGB(255, 77, 113, 79)!,
      bgColor: Colors.white,
      textColor: Color.fromARGB(206, 139, 212, 220),
      createProjectButtonColor:  const LinearGradient(colors: [
              Color.fromARGB(255, 112, 125, 124),
              Color.fromARGB(255, 95, 85, 79)
            ])
      );


  static ThemeModel selectedTheme = theme2;

  static void setSelectedTheme({required ThemeModel theme}) {
    selectedTheme = theme;
  }
}

class ThemeModel {
  Color bgColor;
  Color buttonbgColor;
  Color textColor;
  Gradient createProjectButtonColor;
  ThemeModel(
      {this.bgColor = const Color.fromARGB(255, 19, 21, 23),
      required this.buttonbgColor,
      this.textColor = Colors.white,
     required this.createProjectButtonColor
      });
}
