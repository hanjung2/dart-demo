import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: MainPage(title: 'Flutter Card Demo'),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;
  MainPage({this.title = 'demo'});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: Text(widget.title),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                  buildCard(),
                ],
              )),
        ));
  }

  Card buildCard() {
    var heading = 'Bench Press';
    var subheading = 'Chest | Free Weight | Barbell';
    const cardImage =
        NetworkImage('https://source.unsplash.com/random/800x600?house');
    var supportingText =
        'Beautiful home to rent, recently refurbished with modern appliances...';

    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(heading),
              subtitle: Text(subheading),
              trailing: Icon(Icons.favorite_outline),
            ),
            Container(
              height: 200.0,
              child: Ink.image(
                image: cardImage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              alignment: Alignment.centerLeft,
              child: Text(supportingText),
            ),
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('CONTACT AGENT'),
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
