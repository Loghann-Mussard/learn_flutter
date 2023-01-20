import 'package:flutter/material.dart';
import 'package:my_test/screens/add_event_page.dart';
import 'package:my_test/screens/event_page.dart';
import 'package:my_test/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: [
              const Text("accueil"),
              const Text("Liste d'event"),
              const Text("formulaire")
            ][_currentIndex],
          ),
          body: [
            HomePage(),
            EventPage(),
            AddEventPage(),
          ][_currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) => setCurrentIndex(index),
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.grey,
            iconSize: 32,
            elevation: 10,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.ad_units), label: "Contact"),
              BottomNavigationBarItem(icon: Icon(Icons.add_home), label: "add event"),
            ],
          ),
        ),
    );
  }
}

/*void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => Counter(),
      child: MyApp(),
    ),
  );
}*/
