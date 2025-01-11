import 'package:first_app/ui/views/auth/singup.dart';
import 'package:flutter/material.dart';

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
      home: SignUpView(),
    );
  }
}
