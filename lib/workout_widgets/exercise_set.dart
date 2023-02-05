import 'package:flutter/material.dart';
import 'package:train_log/workout_widgets/set_rep_num_input.dart';

class ExerciseSet extends StatefulWidget {
  final String exerciseName;
  const ExerciseSet({super.key, required this.exerciseName});

  @override
  State<ExerciseSet> createState() => _ExerciseSet();
}

class _ExerciseSet extends State<ExerciseSet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(widget.exerciseName),
          Row(
            children: const [Text('Weight'), Text('x'), Text('Reps')],
          ),
          SetRepNumInput(),
          ElevatedButton(onPressed: () => {}, child: const Text('Add Set'))
        ],
      ),
    );
  }
}
