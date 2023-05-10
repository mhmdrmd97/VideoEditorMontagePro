import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/MixinScreen/MixinScreenModels/Scene_Viewer_Model.dart';
import 'package:video_editor/Logic/MixinScreen/Mixin_Screen_Renderer.dart';
import 'package:video_editor/Logic/MixinScreen/Mixin_Screen_collector.dart';
import 'package:video_editor/Theme/theme_global.dart';

int getDecimalPart(double number) {
  int r = ((number - number.toInt()) * 100).toInt();
  return r;
}

class MixScreen extends ConsumerStatefulWidget {
  const MixScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MixScreenState();
}

class _MixScreenState extends ConsumerState<MixScreen> {
  @override
  Widget build(BuildContext context) {
    var sceneListWatcher = ref.watch(mixinScreenAllRenderer);

    return Scaffold(
        backgroundColor: ThemeGlobal.selectedTheme.bgColor,
        body: Container(
          child: PageView.builder(
            itemCount: MixinScreenCollector.scenes.mixinScenes.length,
            controller: MixinScreenCollector.scenes.sceneController,
            scrollDirection: Axis.vertical,
            itemBuilder:(context,index) => SceneCard(sceneModel: MixinScreenCollector.scenes.mixinScenes[index])
            
          ),
        ));
  }
}

class SceneCard extends ConsumerStatefulWidget {
  SceneCard({super.key, required this.sceneModel});

  SceneModel sceneModel;

  @override
  ConsumerState<SceneCard> createState() => _SceneCardState();
}

class _SceneCardState extends ConsumerState<SceneCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ThemeGlobal.selectedTheme.bgColor,
          image: DecorationImage(
              image: AssetImage("assets/${widget.sceneModel.imgUrl}"),
              fit: BoxFit.cover)),
      width: MediaQuery.of(context).size.width,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                MediaColumnButtons(sceneModel: widget.sceneModel),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextAboveFooter(
                      text: "${widget.sceneModel.textAboveFooter}", textColor: ThemeGlobal.selectedTheme.textColor,
                    )
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          TextTime(sceneModel: widget.sceneModel),
                          const SizedBox(
                            width: 5,
                          ),
                          AspectRatiofooter(sceneModel: widget.sceneModel),
                          const SizedBox(
                            width: 5,
                          ),
                          DownloadsFooter(sceneModel: widget.sceneModel),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      child: Row(
                        children: [
                          Expanded(
                              child: FloatingActionButton.extended(
                                backgroundColor: ThemeGlobal.selectedTheme.buttonbgColor,
                                  onPressed: () {},
                                  label:  Text(
                                    "use",
                                    style: TextStyle(
                                        fontSize: 13, color: ThemeGlobal.selectedTheme.textColor),
                                  ))),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}

class TextAboveFooter extends ConsumerStatefulWidget {
  TextAboveFooter({
    this.fontWeight = FontWeight.normal,
    this.text = "Modern Agency",
    this.textSize = 25.0,
   required this.textColor,
    super.key,
  });
  String text;
  double textSize;
  Color textColor;
  FontWeight fontWeight;

  @override
  ConsumerState<TextAboveFooter> createState() => _TextAboveFooterState();
}

class _TextAboveFooterState extends ConsumerState<TextAboveFooter> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "${widget.text}" "...",
      style: TextStyle(
          fontSize: widget.textSize,
          fontWeight: widget.fontWeight,
          color: widget.textColor),
    );
  }
}

class DownloadsFooter extends ConsumerStatefulWidget {
  DownloadsFooter({super.key, required this.sceneModel});

  SceneModel sceneModel;

  @override
  ConsumerState<DownloadsFooter> createState() => _DownloadsFooterState();
}

class _DownloadsFooterState extends ConsumerState<DownloadsFooter> {
  @override
  Widget build(BuildContext context) {
    return CustomIconText(
      text: "${widget.sceneModel.downloads}k" "\n" "downloads",
      icon: Icons.download,
      callBack: () {
        debugPrint("downloads");
      }, iconColor: ThemeGlobal.selectedTheme.textColor, textColor: ThemeGlobal.selectedTheme.textColor,
    );
  }
}

class AspectRatiofooter extends ConsumerStatefulWidget {
  AspectRatiofooter({super.key, required this.sceneModel});
  SceneModel sceneModel;

  @override
  ConsumerState<AspectRatiofooter> createState() => _AspectRatiofooterState();
}

class _AspectRatiofooterState extends ConsumerState<AspectRatiofooter> {
  @override
  Widget build(BuildContext context) {
    return CustomIconText(
      text: "${widget.sceneModel.aspectRatio.name}"
          "\n"
          "${widget.sceneModel.aspectRatio.value}",
      icon: Icons.aspect_ratio,
      callBack: () {
        debugPrint("Aspect Ratio");
      }, iconColor: ThemeGlobal.selectedTheme.textColor, textColor: ThemeGlobal.selectedTheme.textColor,
    );
  }
}

class TextTime extends ConsumerStatefulWidget {
  TextTime({super.key, required this.sceneModel});

  SceneModel sceneModel;

  @override
  ConsumerState<TextTime> createState() => _TextTimeState();
}

class _TextTimeState extends ConsumerState<TextTime> {
  @override
  Widget build(BuildContext context) {
    return CustomIconText(
      text:
          "${(widget.sceneModel.timeSeconds ~/ 60) < 10 ? "0" : ""}${(widget.sceneModel.timeSeconds ~/ 60)}"
          ":"
          "${((getDecimalPart(widget.sceneModel.timeSeconds / 60) * 60)) < 10 ? "0" : ""}"
          "${((getDecimalPart(widget.sceneModel.timeSeconds / 60) * 60)~/100)}",
      icon: Icons.timelapse,
      callBack: () {
        debugPrint("timetext");
      }, iconColor: ThemeGlobal.selectedTheme.textColor, textColor: ThemeGlobal.selectedTheme.textColor,
    );
  }
}

class CustomIconText extends ConsumerStatefulWidget {
  CustomIconText(
      {super.key,
      this.text = "00:25",
      this.textSize = 12.0,
     required this.textColor,
     required this.iconColor,
      this.iconSize = 27,
      this.icon = Icons.timelapse,
      this.preTextSpacing = 4,
      this.postTextSpacing = 2,
      this.callBack});

  String text;
  Color textColor;
  Color iconColor;
  double textSize;
  double iconSize;
  IconData icon;
  double preTextSpacing;
  double postTextSpacing;
  var callBack;

  @override
  ConsumerState<CustomIconText> createState() => _CustomIconTextState();
}

class _CustomIconTextState extends ConsumerState<CustomIconText> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.callBack,
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: widget.iconSize,
            color: widget.iconColor,
          ),
          SizedBox(
            width: widget.preTextSpacing,
          ),
          Text(
            widget.text,
            style:
                TextStyle(fontSize: widget.textSize, color: widget.textColor),
          ),
          SizedBox(width: widget.postTextSpacing)
        ],
      ),
    );
  }
}

class MediaColumnButtons extends ConsumerStatefulWidget {
  MediaColumnButtons({super.key, required this.sceneModel});

  SceneModel sceneModel;

  @override
  ConsumerState<MediaColumnButtons> createState() => _MediaColumnButtonsState();
}

class _MediaColumnButtonsState extends ConsumerState<MediaColumnButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FavoriteMediaButton(sceneModel: widget.sceneModel),
        SizedBox(
          height: 20.0,
        ),
        CommentMediaButton(sceneModel: widget.sceneModel),
        SizedBox(
          height: 20.0,
        ),
        ShareMediaButton(sceneModel: widget.sceneModel),
        SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}

class FavoriteMediaButton extends ConsumerStatefulWidget {
  FavoriteMediaButton({super.key, required this.sceneModel});

  SceneModel sceneModel;

  @override
  ConsumerState<FavoriteMediaButton> createState() =>
      _FavoriteMediaButtonState();
}

class _FavoriteMediaButtonState extends ConsumerState<FavoriteMediaButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomMediaButton(
          icon: Icons.favorite_border_outlined,
          callback: () {
            debugPrint("favorite");
          }, iconColor: ThemeGlobal.selectedTheme.textColor,
        ),
         Text(
          "${widget.sceneModel.likes}" "K",
          style: TextStyle(fontSize: 18, color: ThemeGlobal.selectedTheme.textColor),
        )
      ],
    );
  }
}

class CommentMediaButton extends ConsumerStatefulWidget {
  CommentMediaButton({super.key, required this.sceneModel});

  SceneModel sceneModel;

  @override
  ConsumerState<CommentMediaButton> createState() => _CommentMediaButtonState();
}

class _CommentMediaButtonState extends ConsumerState<CommentMediaButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomMediaButton(
          icon: Icons.message_rounded,
          callback: () {
            debugPrint("Comment");
          }, iconColor: ThemeGlobal.selectedTheme.textColor,
        ),
         Text(
          "${widget.sceneModel.comments}" "K",
          style: TextStyle(fontSize: 18, color: ThemeGlobal.selectedTheme.textColor),
        )
      ],
    );
  }
}

class ShareMediaButton extends ConsumerStatefulWidget {
   ShareMediaButton({
    super.key,
    required this.sceneModel
  });


  SceneModel sceneModel;

  @override
  ConsumerState<ShareMediaButton> createState() => _ShareMediaButtonState();
}

class _ShareMediaButtonState extends ConsumerState<ShareMediaButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomMediaButton(
          icon: Icons.share,
          callback: () {
            debugPrint("Share");
          }, iconColor: ThemeGlobal.selectedTheme.textColor,
        ),
         Text(
          "${widget.sceneModel.shares}" "K",
          style: TextStyle(fontSize: 18, color: ThemeGlobal.selectedTheme.textColor),
        )
      ],
    );
  }
}

class CustomMediaButton extends ConsumerStatefulWidget {
  CustomMediaButton(
      {super.key,
      this.icon = Icons.favorite_border_outlined,
     required this.iconColor,
      this.iconSize = 50,
      this.callback});

  IconData icon;
  Color iconColor;
  double iconSize;
  var callback;
  @override
  ConsumerState<CustomMediaButton> createState() => _CustomMediaButtonState();
}

class _CustomMediaButtonState extends ConsumerState<CustomMediaButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: widget.iconSize + 10.0,
        width: widget.iconSize + 20.0,
        child: IconButton(
            onPressed: widget.callback,
            icon: Icon(
              widget.icon,
              color: widget.iconColor,
              size: widget.iconSize,
            )));
  }
}
