import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MixScreen extends ConsumerStatefulWidget {
  const MixScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MixScreenState();
}
class _MixScreenState extends ConsumerState<MixScreen> {
  @override
  Widget build(BuildContext context) {
       return const Scaffold(
        backgroundColor: const Color.fromARGB(255, 19, 21, 23),
        body: Center(child: Text("Mix Page",style: TextStyle(color:Colors.white),),),);
  }
}