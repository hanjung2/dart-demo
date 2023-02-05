import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_log/bloc/new_exercise_cubit.dart';
import 'package:train_log/models/exercise.model.dart';
import 'package:train_log/models/exercise_set_detail.model.dart';

class ExerciseCard extends StatefulWidget {
  final Exercise exercise;

  const ExerciseCard({Key? key, required this.exercise});
  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  var supportingText =
      'Beautiful exercise to build chest muscle and strength ...';
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Column(
        children: [
          ListTile(
            title: Text(widget.exercise.exerciseName),
            subtitle: Text(widget.exercise.targetArea.toString()),
            // trailing: Icon(Icons.favorite_outline),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16.0),
            alignment: Alignment.centerLeft,
            child: Text(supportingText),
          ),
          ButtonBar(
            children: [
              TextButton(
                child: const Text('ADD EXERCISE'),
                onPressed: () {
                  context
                      .read<NewExerciseCubit>()
                      .add(ExerciseSetDetail.withEmptySetList(widget.exercise));
                  Navigator.pop(context);
                },
              ),
              TextButton(
                child: const Text('LEARN MORE'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
