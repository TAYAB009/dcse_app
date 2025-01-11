import 'package:first_app/ui/views/auth/singup.dart';
import 'package:first_app/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
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
          leading: const Text(''),
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
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HomeView();
                      },
                    ));
                  },
                  child: const Text('LogIn')),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const SignUpView();
                          },
                        ));
                      },
                      child: const Text('Create account'))
                ],
              )
            ],
          ),
        )));
  }
}
