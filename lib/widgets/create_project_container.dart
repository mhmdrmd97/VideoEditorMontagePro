
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CreateProjectContainer extends ConsumerStatefulWidget {
  const CreateProjectContainer({
    super.key,
  });

  @override
  ConsumerState<CreateProjectContainer> createState() => _CreateProjectContainerState();
}

class _CreateProjectContainerState extends ConsumerState<CreateProjectContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 120,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 253, 77, 61),
              Color.fromARGB(255, 253, 123, 50)
            ]),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Icons.add_circle,
              color: Colors.white,
              size: 45.0,
            ),
            Text(
              "New Project",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }
}