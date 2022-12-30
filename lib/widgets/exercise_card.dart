import 'package:flutter/material.dart';

class ExerciseCard extends StatefulWidget {
  final String title;
  final String subtitle;

  const ExerciseCard({Key? key, required this.title, required this.subtitle})
      : super(key: key);
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
              title: Text(widget.title),
              subtitle: Text(widget.subtitle),
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
        ));
  }
}
