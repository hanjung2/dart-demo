import 'package:flutter/material.dart';

class NewWorkoutPage extends StatefulWidget {
  const NewWorkoutPage({super.key});

  @override
  State<NewWorkoutPage> createState() => _NewWorkoutPage();
}

class _NewWorkoutPage extends State<NewWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: .3,
      initialChildSize: .9,
      builder: (_, controller) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(32),
        child: ListView(
          controller: controller,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Add Excercise'),
            )
          ],
        ),
      ),
    );
  }
}
