import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:train_log/widgets/exercise_card.dart';

import '../models/exercise_model.dart';

class NewExerciseDialog extends StatefulWidget {
  const NewExerciseDialog({super.key});

  @override
  State<NewExerciseDialog> createState() => _NewExerciseDialog();
}

class _NewExerciseDialog extends State<NewExerciseDialog> {
  @override
  Widget build(BuildContext context) {
    Set<Exercise> exerciseList = <Exercise>{
      Exercise('Bench Press', {'Chest', 'Tricep'}),
      Exercise('Squat', {
        'Leg',
      }),
      Exercise('Shoulder Press', {'Shoulder'}),
      Exercise('Pull Up', {'Back'})
    };

    return Dialog(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: const Center(
              child: Text(
                'Add Exercise',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          TextField(
            keyboardType: TextInputType.text,
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(FontAwesomeIcons.dumbbell),
              hintText: 'Search Exercise',
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: exerciseList.length,
              itemBuilder: (_, index) => Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: ExerciseCard(
                    title: exerciseList.toList()[index].exerciseName,
                    subtitle:
                        exerciseList.toList()[index].targetArea.join(', ')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
