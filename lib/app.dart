import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          selectedIconTheme: IconThemeData(color: Colors.blue),
          selectedLabelStyle: TextStyle(color: Colors.blue),
          unselectedIconTheme: IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood_outlined), label: 'Recipe'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ]),
    );
  }
}
