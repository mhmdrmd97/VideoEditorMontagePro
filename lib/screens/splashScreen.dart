import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:video_editor/screens/main_screen.dart';

class SplashyScreen extends ConsumerStatefulWidget {
  const SplashyScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SplashyScreenState();
}

class _SplashyScreenState extends ConsumerState<SplashyScreen> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: const Image(image: AssetImage("assets/splashy.png")),
      title: Text(
        "Montage Pro",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 253, 77, 61),
      showLoader: true,
      loadingText: Text("Loading..."),
      navigator: MainScreen(),
      durationInSeconds: 5,
    );
  }
}
