import 'package:flutter/material.dart';

import '../widgets/exercise_card.dart';

class WorkoutList extends StatefulWidget {
  const WorkoutList({super.key});

  @override
  _WorkoutList createState() => _WorkoutList();
}

class _WorkoutList extends State<WorkoutList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Button'),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 140,
          child: ListView.builder(
              itemBuilder: ((_, index) => ExerciseCard(
                    subheading: '$index workout',
                    title: '$index workout',
                  ))),
        )
      ],
    );
  }
}
