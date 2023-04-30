import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:video_editor/Logic/CreateScreen/CreateScreenModels/create_screen_projects_cards_model.dart';
import 'package:video_editor/Logic/CreateScreen/create_screen_collector.dart';
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
                backgroundColor: const Color.fromARGB(255, 19, 21, 23),
                onPressed: () {},
                label: Row(
                  children: [
                    const Icon(Icons.folder_open),
                    const Text(" Import")
                  ],
                )),
          )
        ],
        backgroundColor: const Color.fromARGB(255, 19, 21, 23),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 19, 21, 23),
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
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                          "Project Name",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      ProjectNameTextField(project: widget.project,),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Text(
                          "Aspect Ratio",
                          style: TextStyle(color: Colors.white),
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
                                backgroundColor: Colors.white,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 19, 21, 23),
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("16:9")
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
                                backgroundColor: Colors.white,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 19, 21, 23),
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("9:16")
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
                                backgroundColor: Colors.white,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 19, 21, 23),
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("1:1")
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
                                backgroundColor: Colors.white,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 19, 21, 23),
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("4:3")
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
                                backgroundColor: Colors.white,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 19, 21, 23),
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("3:4")
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
                                backgroundColor: Colors.white,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 19, 21, 23),
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("4:5")
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
                                backgroundColor: Colors.white,
                                radius: 52.0,
                                child: CircleAvatar(
                                  backgroundColor: const Color.fromARGB(255, 19, 21, 23),
                                  radius: 50.0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    Icon(Icons.airplay_rounded),
                                    Text("2.35:1")
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
                      backgroundColor: Colors.red[700],
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
