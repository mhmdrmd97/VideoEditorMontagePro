import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchScreenState();
}
class _SearchScreenState extends ConsumerState<SearchScreen> {
  @override
  Widget build(BuildContext context) {
        return const Scaffold(
          backgroundColor: const Color.fromARGB(255, 19, 21, 23),
          body:  Center(child: Text("Search Page",style: TextStyle(color:Colors.white),),),);
  }
}