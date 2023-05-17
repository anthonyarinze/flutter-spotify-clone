import 'package:flutter/material.dart';
import 'package:spotify_clone/pages/home_page.dart';
import 'package:spotify_clone/pages/search_page.dart';
import 'package:spotify_clone/pages/your_library.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;

  final screens = [const Home(), const SearchPage(), const YourLibrary()];

  final items = <BottomNavigationBarItem>[
    const BottomNavigationBarItem(
      label: 'Home',
      icon: Icon(Icons.home_filled),
      backgroundColor: Colors.yellow,
    ),
    const BottomNavigationBarItem(
      label: 'Search',
      icon: Icon(Icons.search),
    ),
    const BottomNavigationBarItem(
      label: 'Your Library',
      icon: Icon(Icons.library_music),
    ),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontFamily: 'GothamRoundedLight',
          ),
        ),
      ),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          items: items,
          currentIndex: index,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: (value) => setState(() => index = value),
        ),
        body: screens[index],
      ),
    );
  }
}
