import 'package:flutter/material.dart';
import 'new_workout_page.dart';

class WorkoutList extends StatefulWidget {
  const WorkoutList({super.key});

  @override
  State<WorkoutList> createState() => _WorkoutList();
}

class _WorkoutList extends State<WorkoutList> {
  Widget buildSheet() => NewWorkoutPage();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        onPressed: () => showModalBottomSheet(
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            context: context,
            builder: (context) => buildSheet()),
        child: const Text('Create New Workout'),
      ),
      Expanded(
        child: ListView.builder(
          itemBuilder: ((_, index) => Container(
                child: Text('Place holder $index'),
              )),
        ),
      ),
    ]);
  }
}
