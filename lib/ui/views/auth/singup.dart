import 'package:first_app/ui/views/auth/signin.dart';
import 'package:first_app/ui/views/home/home_view.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
          title: const Text('SignUp View'),
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
                    if (emailController.text != '' &&
                        emailController.text.isNotEmpty &&
                        passwordController.text != '' &&
                        passwordController.text.isNotEmpty) {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return HomeView();
                        },
                      ));
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Error!'),
                            content:
                                Text('Email and Password must be provided'),
                            actions: [
                              // TextButton(
                              //     onPressed: () {
                              //       Navigator.of(context).pop();
                              //     },
                              //     child: const Text('No')),
                              // TextButton(
                              //     onPressed: () {
                              //       Navigator.of(context).pop();
                              //     },
                              //     child: const Text(
                              //       'Yes',
                              //       style: TextStyle(color: Colors.red),
                              //     )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Ok'))
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Sign up')),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Already have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const SignInView();
                          },
                        ));
                      },
                      child: const Text('Sign in here'))
                ],
              )
            ],
          ),
        )));
  }
}
