import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_log/models/exercise.model.dart';
import 'package:train_log/models/exercise_set_detail.model.dart';
import 'package:train_log/workout_widgets/exercise_set.dart';

import '../bloc/new_exercise_cubit.dart';
import '../workout_widgets/add_exercise_dialog.dart';

class NewWorkoutPage extends StatefulWidget {
  const NewWorkoutPage({super.key});

  @override
  State<NewWorkoutPage> createState() => _NewWorkoutPage();
}

class _NewWorkoutPage extends State<NewWorkoutPage> {
  Widget buildDialog() => const AddExerciseDialog();

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: .3,
      initialChildSize: .94,
      builder: (_, controller) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => showDialog(
                  context: context, builder: (context) => buildDialog()),
              child: const Text('Add Excercise'),
            ),
            BlocBuilder<NewExerciseCubit, List<ExerciseSetDetail>>(
                builder: (context, exerciseList) {
              return Expanded(
                child: ListView.builder(
                  itemCount: exerciseList.length,
                  itemBuilder: (_, index) => Container(
                      margin: const EdgeInsets.only(top: 5.0),
                      child: ExerciseSet(
                          exerciseName:
                              exerciseList[index].exercise.exerciseName)),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
