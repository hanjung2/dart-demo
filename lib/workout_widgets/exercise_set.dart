import 'package:flutter/material.dart';
import 'package:train_log/workout_widgets/set_rep_num_input.dart';

import '../models/exercise_set_detail.model.dart';

class ExerciseSet extends StatefulWidget {
  ExerciseSetDetail exerciseSetDetail;
  ExerciseSet({super.key, required this.exerciseSetDetail});

  @override
  State<ExerciseSet> createState() => _ExerciseSet();
}

class _ExerciseSet extends State<ExerciseSet> {
  List<int> nums = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(widget.exerciseSetDetail.exercise.exerciseName),
          Row(
            children: const [Text('Weight'), Text('x'), Text('Reps')],
          ),
          for (var i in nums) SetRepNumInput(),
          Text(context.toString()),
          ElevatedButton(onPressed: () => {}, child: const Text('Add Set'))
        ],
      ),
    );
  }
}
