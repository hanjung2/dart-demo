import 'package:flutter/material.dart';

class ExerciseCard extends StatefulWidget {
  final String title;
  final String subheading;

  const ExerciseCard({Key? key, required this.title, required this.subheading})
      : super(key: key);
  @override
  _ExerciseCardState createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  var supportingText =
      'Beautiful exercise to build chest muscle and strength ...';
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(widget.title),
              subtitle: Text(widget.subheading),
              trailing: Icon(Icons.favorite_outline),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(supportingText),
            ),
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('ADD EXERCISE'),
                  onPressed: () {/* ... */},
                ),
                TextButton(
                  child: const Text('LEARN MORE'),
                  onPressed: () {/* ... */},
                )
              ],
            )
          ],
        ));
  }
}
