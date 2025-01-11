import 'package:first_app/app.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        // colorScheme: ColorScheme.dark(),
      ),
      home: MainApp(),
      // home: SignUpView(),
    );
  }
}
