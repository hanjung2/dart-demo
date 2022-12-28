import 'package:flutter/material.dart';

import '../widgets/add_exercise_dialog.dart';

class NewWorkoutPage extends StatefulWidget {
  const NewWorkoutPage({super.key});

  @override
  State<NewWorkoutPage> createState() => _NewWorkoutPage();
}

class _NewWorkoutPage extends State<NewWorkoutPage> {
  Widget buildDialog() => const NewExerciseDialog();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: .3,
      initialChildSize: .9,
      builder: (_, controller) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(32),
        child: ListView(
          controller: controller,
          children: [
            ElevatedButton(
              onPressed: () => showDialog(
                  context: context, builder: (context) => buildDialog()),
              child: const Text('Add Excercise'),
            )
          ],
        ),
      ),
    );
  }
}
