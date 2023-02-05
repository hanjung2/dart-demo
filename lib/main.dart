import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_log/bloc/new_exercise_cubit.dart';
import 'package:train_log/pages/user_profile.dart';
import 'package:train_log/pages/workout_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewExerciseCubit(),
      child: MaterialApp(
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: MainPage(title: 'Workout List'),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;
  MainPage({super.key, this.title = ''});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const WorkoutList(),
    const UserProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
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
