import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/CreateScreen/CreateScreenModels/create_screen_projects_cards_model.dart';
import 'package:video_editor/Logic/CreateScreen/create_screen_collector.dart';
import 'package:video_editor/Logic/MixinScreen/MixinScreenModels/Scene_Viewer_Model.dart';
import 'package:video_editor/Theme/theme_global.dart';
import 'package:video_editor/widgets/project_name_textfield.dart';

class CreateProjectScreen extends ConsumerStatefulWidget {
  CreateProjectScreen({super.key, required ProjectCardModel this.project});
  ProjectCardModel project;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateProjectScreenState();
}

class _CreateProjectScreenState extends ConsumerState<CreateProjectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 18.0),
            child: FloatingActionButton.extended(
                heroTag: "${Random().nextInt(30000)}",
                backgroundColor: ThemeGlobal.selectedTheme.bgColor,
                onPressed: () {},
                label: Row(
                  children: [
                    const Icon(Icons.folder_open),
                    const Text(" Import")
                  ],
                )),
          )
        ],
        backgroundColor: ThemeGlobal.selectedTheme.bgColor,
        centerTitle: true,
      ),
      backgroundColor: ThemeGlobal.selectedTheme.bgColor,
      body: Column(
        children: [
          Expanded(
              flex: 6,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                       Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          "Project Name",
                          style: TextStyle(color: ThemeGlobal.selectedTheme.textColor, fontSize: 20),
                        ),
                      ),
                      ProjectNameTextField(project: widget.project,),
                      const SizedBox(
                        height: 10,
                      ),
                       Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          "Aspect Ratio",
                          style: TextStyle(color: ThemeGlobal.selectedTheme.textColor),
                        ),
                      ),
                      Wrap(
                        
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              radius: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                              onTap: (){
                                
                              },
                              child: CircleAvatar(
                                backgroundColor: ThemeGlobal.selectedTheme.textColor,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: ThemeGlobal.selectedTheme.bgColor,
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("${AspectRatios.youtube.name}",style: TextStyle(fontSize: 10,),),
                                    Text("${AspectRatios.youtube.value}")
                                  ],),
                                ),
                              ),
                            ),
                          ),
                                                    
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              radius: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                              onTap: (){
                                
                              },
                              child: CircleAvatar(
                                backgroundColor: ThemeGlobal.selectedTheme.textColor,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: ThemeGlobal.selectedTheme.bgColor,
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("${AspectRatios.tiktok.name}",style: TextStyle(fontSize: 10,),),
                                    Text("${AspectRatios.tiktok.value}")
                                  ],),
                                ),
                              ),
                            ),
                          ),
                                                    
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              radius: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                              onTap: (){
                                
                              },
                              child: CircleAvatar(
                                backgroundColor: ThemeGlobal.selectedTheme.textColor,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: ThemeGlobal.selectedTheme.bgColor,
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("${AspectRatios.instagram.name}",style: TextStyle(fontSize: 10,),),
                                    Text("${AspectRatios.instagram.value}")
                                  ],),
                                ),
                              ),
                            ),
                          ),
                                                    
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              radius: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                              onTap: (){
                                
                              },
                              child: CircleAvatar(
                                backgroundColor: ThemeGlobal.selectedTheme.textColor,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: ThemeGlobal.selectedTheme.bgColor,
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("${AspectRatios.paperL.name}",style: TextStyle(fontSize: 10,),),
                                    Text("${AspectRatios.paperL.value}")
                                  ],),
                                ),
                              ),
                            ),
                          ),
                                                    
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              radius: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                              onTap: (){
                                
                              },
                              child: CircleAvatar(
                                backgroundColor: ThemeGlobal.selectedTheme.textColor,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: ThemeGlobal.selectedTheme.bgColor,
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("${AspectRatios.paperP.name}",style: TextStyle(fontSize: 10,),),
                                    Text("${AspectRatios.paperP.value}")
                                  ],),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              radius: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                              onTap: (){
                                
                              },
                              child: CircleAvatar(
                                backgroundColor: ThemeGlobal.selectedTheme.textColor,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: ThemeGlobal.selectedTheme.bgColor,
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("${AspectRatios.facebook.name}",style: TextStyle(fontSize: 10,),),
                                    Text("${AspectRatios.facebook.value}")
                                  ],),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              radius: 10.0,
                              borderRadius: BorderRadius.circular(10.0),
                              onTap: (){
                                
                              },
                              child: CircleAvatar(
                                backgroundColor: ThemeGlobal.selectedTheme.textColor,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: ThemeGlobal.selectedTheme.bgColor,
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("${AspectRatios.cenimaScope.name}",style: TextStyle(fontSize: 10,),),
                                    Text("${AspectRatios.cenimaScope.value}")
                                  ],),
                                ),
                              ),
                            ),
                          ),
                                                    
                        ],
                      )
              
                    ],
                  ),
                ),
              )),
          Expanded(
              child: Container(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: FloatingActionButton.extended(
                      heroTag: "${Random().nextInt(30000)}",
                      backgroundColor: ThemeGlobal.selectedTheme.buttonbgColor,
                      onPressed: () {},
                      label: const Text(
                        "create",
                        style: TextStyle(fontSize: 25),
                      ))),
            ),
          )),
        ],
      ),
    );
  }
}
