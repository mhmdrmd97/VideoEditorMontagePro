import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MeScreen extends ConsumerStatefulWidget {
  const MeScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MeScreenState();
}
class _MeScreenState extends ConsumerState<MeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 21, 23),
      body: Center(child: Text("Me Page",style: TextStyle(color:Colors.white),),),);
  }
}