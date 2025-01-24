// import 'package:first_app/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:first_app/firebase_options.dart';
import 'package:first_app/ui/views/auth/singup.dart';
import 'package:flutter/material.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
      // home: MainApp(),
      home: SignUpView(),
    );
  }
}
