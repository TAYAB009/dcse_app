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
      home: const HomeScreeen(),
    );
  }
}

class HomeScreeen extends StatefulWidget {
  const HomeScreeen({super.key});

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isShowText = false;

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // double w = size.width;
    // double h = size.height;

    return Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          backgroundColor: Colors.amber,
          title: const Text('Login View'),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //================== Email Controller ==================
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    labelText: 'Email',
                    prefix: const Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              const SizedBox(height: 10.0),
              // ================== Password Controller  ==================
              TextField(
                // onChanged: (value) {
                //   print('🚀  $value');
                // },
                controller: passwordController,
                obscureText: isShowText, // hide your text
                decoration: InputDecoration(
                    hintText: 'Enter your password',
                    labelText: 'Password',
                    prefix: const RotatedBox(
                        quarterTurns: 1, child: Icon(Icons.key)),
                    suffix: IconButton(
                        onPressed: () {
                          setState(() {
                            isShowText = !isShowText;
                            // print('🚀  ${passwordController.text.trim()} ');
                            // print(isShowText);
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                  onPressed: () {
                    print(
                        '🚀 User is logging in with Email ${emailController.text} and password ${passwordController.text.toLowerCase()}');
                  },
                  child: Text('LogIn'))
            ],
          ),
        )));
  }
}

/*
//===============Container Widget Related Code---for session-06================
// Load image from assets folder
// AssetImage('assets/laptop.jpg'), fit: BoxFit.fill)

// Load image from network
 body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 400,
          height: 500,
          alignment: Alignment.center,
          padding: const EdgeInsets.only(left: 50),
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage('https://picsum.photos/250?image=9'),
                  fit: BoxFit.fill),
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                width: 4,
                color: Colors.green,
                style: BorderStyle.solid,
              )),
          // color: Colors.blue, // specify the color of the container
          child: const Text(
            'Hello World',
            style: TextStyle(fontSize: 20.0, color: Colors.amber),
          ),
        ),
      ),



*/
