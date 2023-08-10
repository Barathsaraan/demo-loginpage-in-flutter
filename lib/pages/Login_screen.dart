import 'package:flutter/material.dart';
import 'package:login_page/pages/home_page.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Text("WELCOME"),
              // Text("Sign In"),
              Center(
                child: Image.asset(
                  'assets/images/lock.png',
                  width: 200,
                  height: 200,
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  child: Text("LOGIN",
                      style: TextStyle(fontWeight: FontWeight.bold))),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _username,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Username'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Password'),
                ),
              ),

              // TextField(
              //   decoration: InputDecoration(
              //       labelText: "Email-Id",
              //       labelStyle:
              //           TextStyle(fontSize: 15, color: Colors.grey.shade400),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(10))),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // Center(
              //   child: TextField(
              //     controller: _email,
              //     decoration: InputDecoration(
              //         labelText: "Password",
              //         labelStyle:
              //             TextStyle(fontSize: 15, color: Colors.grey.shade400),
              //         border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(10))),
              //   ),
              // ),
              // SizedBox(
              //   height: 20,
              // ),

              // Container(
              //   height: size.height / 14,
              //   width: size.width,
              //   alignment: Alignment.center,
              //   decoration: BoxDecoration(
              //       color: Colors.red, borderRadius: BorderRadius.circular(55)),
              //   child: Text(
              //     "Login",
              //     style: TextStyle(
              //         color: Colors.blue, fontWeight: FontWeight.bold),
              //   ),
              // ),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => WelcomePage(
                          username: _username.text, password: _password.text)));
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red)),
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              // Container(
              //     margin: const EdgeInsets.only(top: 10),
              //     alignment: Alignment.centerRight,
              //     child: Text("Forget Password")),

              // Container(
              //     margin: const EdgeInsets.only(top: 10),
              //     alignment: Alignment.center,
              //     child: Text("signup")),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'sign up',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextButton(onPressed: () {}, child: Text('Forget Password'))
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Text('Login or signup with'),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/Google.png',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/images/facebook.png',
                    width: 30,
                    height: 30,
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text('sign up'),
              //     TextButton(onPressed: () {}, child: Text('Forget Password'))
              //   ],
              // ),

              // ElevatedButton(
              //   onPressed: () {
              //     print('facebook login is clicked');
              //   },
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Text(
              //         'Login',
              //         style: TextStyle(
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              // ElevatedButton(
              //   onPressed: () {
              //     print('google login is clicked');
              //   },
              //   child: Row(
              //     children: [
              //       Image.asset(
              //         'assets/images/google.png',
              //         width: 20,
              //         height: 20,
              //       ),
              //     ],
              //   ),
              // )
            ],
          )),
    ));
  }
}
