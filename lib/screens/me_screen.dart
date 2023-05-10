import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:video_editor/Logic/MeScreen/Me_screen_Renderer.dart';
import 'package:video_editor/Theme/theme_global.dart';
import 'package:video_editor/widgets/Asset_Helper.dart';

class MeScreen extends ConsumerStatefulWidget {
  const MeScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MeScreenState();
}

class _MeScreenState extends ConsumerState<MeScreen> {
  @override
  Widget build(BuildContext context) {
    final mescreenwatcher = ref.watch(meScreenAllRenderer);
    return Scaffold(
      backgroundColor: ThemeGlobal.selectedTheme.bgColor,
      body: Container(
          decoration: BoxDecoration(image: AssetHelper.backgroundMeImage),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "VideoMaster",
                    style: TextStyle(
                        fontSize: 37,
                        fontWeight: FontWeight.bold,
                        color: ThemeGlobal.selectedTheme.textColor),
                  ),
                  Text(
                    "Connect with Global Video Creators",
                    style: TextStyle(
                        fontSize: 15,
                        color: ThemeGlobal.selectedTheme.textColor),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 70.0,
                  ),
                  Container(
                      height: 50,
                      width: 300,
                      child: FloatingActionButton.extended(
                          backgroundColor:
                              ThemeGlobal.selectedTheme.buttonbgColor,
                          onPressed: () {},
                          label: const Text(
                            "Create an Account",
                            style: TextStyle(fontSize: 18),
                          ))),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "OR",
                    style: TextStyle(
                        fontSize: 20,
                        color: ThemeGlobal.selectedTheme.textColor),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CustomIconTextButton(
                      label: "Continue with Google",
                      callback: () {
                        debugPrint("hi");
                      }),
                  const SizedBox(
                    height: 20.0,
                  ),
                  CustomIconTextButton(
                      imgUrlAsset: "mac.png",
                      label: "Continue with Apple",
                      callback: () {
                        debugPrint("hi");
                      }),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Colors.black12),
                  BoxShadow(color: Colors.black26),
                  BoxShadow(color: Colors.black26),
                  BoxShadow(color: Colors.black12),
                ]),
                child: Column(
                  children: [
                    Text(
                      "I have Read and Accept the VideoMaster",
                      style: TextStyle(
                          fontSize: 15,
                          color: ThemeGlobal.selectedTheme.textColor),
                    ),
                    GestureDetector(
                        onTap: () {
                          debugPrint("terms and conditions");
                        },
                        child: Text(
                          "Terms of Services and Privace Policey",
                          style: TextStyle(
                              fontSize: 13,
                              color: ThemeGlobal.selectedTheme.textColor),
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(color: Colors.black12),
                  BoxShadow(color: Colors.black26),
                  BoxShadow(color: Colors.black26),
                  BoxShadow(color: Colors.black12),
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an Account? ",
                      style: TextStyle(
                          fontSize: 15,
                          color: ThemeGlobal.selectedTheme.textColor),
                    ),
                    GestureDetector(
                        onTap: () {
                          debugPrint("Sign-in with Email");
                        },
                        child: Text(
                          "Sign-in with Email",
                          style: TextStyle(
                              fontSize: 13,
                              color: ThemeGlobal.selectedTheme.textColor),
                        )),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class CustomIconTextButton extends ConsumerStatefulWidget {
  CustomIconTextButton(
      {super.key,
      this.imgHeight = 30,
      this.imgWidth = 30,
      this.imgUrlAsset = "google.png",
      this.label = "Continue with Google",
      this.preTextSpace = 10,
      this.postTextSpace = 0,
      this.callback = ""});
  double imgHeight;
  double imgWidth;
  double preTextSpace;
  double postTextSpace;
  String imgUrlAsset;
  String label;
  var callback;

  @override
  ConsumerState<CustomIconTextButton> createState() =>
      _CustomIconTextButtonState();
}

class _CustomIconTextButtonState extends ConsumerState<CustomIconTextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 300,
        child: FloatingActionButton.extended(
            backgroundColor: ThemeGlobal.selectedTheme.textColor,
            onPressed: widget.callback,
            label: Row(
              children: [
                Image(
                    image: AssetImage("assets/${widget.imgUrlAsset}"),
                    height: widget.imgHeight,
                    width: widget.imgWidth),
                SizedBox(
                  width: widget.preTextSpace,
                ),
                SizedBox(
                  width: 220,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.label}",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: widget.postTextSpace,
                ),
              ],
            )));
  }
}
