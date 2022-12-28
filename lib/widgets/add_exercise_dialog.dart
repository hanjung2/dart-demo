import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewExerciseDialog extends StatefulWidget {
  const NewExerciseDialog({super.key});

  @override
  State<NewExerciseDialog> createState() => _NewExerciseDialog();
}

class _NewExerciseDialog extends State<NewExerciseDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Center(
            child: Text('Add Exercise'),
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
              itemBuilder: (_, index) => Container(
                child: Text('item num $index'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
