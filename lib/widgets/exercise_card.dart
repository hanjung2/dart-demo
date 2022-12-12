import 'package:flutter/material.dart';

class ExerciseCard extends StatefulWidget {
  const ExerciseCard({super.key});
  @override
  _ExerciseCardState createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  String _title = 'Bench press';
  String subheading = 'Chest | Free Weight | Barbell';
  var supportingText =
      'Beautiful exercise to build chest muscle and strength ...';
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(_title),
              subtitle: Text(subheading),
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
