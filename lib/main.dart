import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:train_log/widgets/exercise_card.dart';

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
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  final List<Widget> _widgetOptions = <Widget>[
    Container(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              ExerciseCard(
                title: 'Bench Press',
                subheading: 'Chest | Free Weight | Barbell',
              ),
              ExerciseCard(
                  title: 'Military Press',
                  subheading: 'Shoulder | Free Weight | Barbell'),
              ExerciseCard(
                  title: 'Military Press',
                  subheading: 'Shoulder | Free Weight | Barbell'),
              ExerciseCard(
                  title: 'Military Press',
                  subheading: 'Shoulder | Free Weight | Barbell'),
              ExerciseCard(
                  title: 'Military Press',
                  subheading: 'Shoulder | Free Weight | Barbell'),
              ExerciseCard(
                  title: 'Military Press',
                  subheading: 'Shoulder | Free Weight | Barbell')
            ],
          )),
    ),
    const Text(
      'User Profile Page',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget exerciseList() {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: const [
              ExerciseCard(
                title: 'Bench Press',
                subheading: 'Chest | Free Weight | Barbell',
              ),
              ExerciseCard(
                  title: 'Military Press',
                  subheading: 'Shoulder | Free Weight | Barbell')
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text(widget.title),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.dumbbell), label: 'Workout'),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.userAstronaut), label: 'Profile')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
