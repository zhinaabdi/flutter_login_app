import 'package:flutter/material.dart';
import 'package:log_in_page/popup.dart';

import 'forgot_pass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF7A3A90), Color(0xFF433185)],
                stops: [0.10, 0.8],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              height: 450,
              width: 300,
              child: Form(
                key: _formkey,
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    TextFormField(
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return ('email is required');
                        }
                        if (value != 'zhinaabdi64') {
                          return ('your email is wrong');
                        }
                      },
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.white54,
                          size: 20,
                        ),
                        hoverColor: Colors.white54,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                          borderSide: BorderSide(),
                        ),
                        labelText: 'your Email',
                      ),
                      style: TextStyle(color: Colors.white54),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      obscureText: true,
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return ('Password is required');
                        }
                        if (value != '123456') {
                          return ('your password is wrong');
                        }
                      },
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: Colors.white54),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.white54,
                          size: 20,
                        ),
                        hoverColor: Colors.white54,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(100)),
                        ),
                        labelText: 'your Password',
                      ),
                      style: TextStyle(color: Colors.white54),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 300,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade300,
                        ),
                        child: Text('Log in'),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PopUp()),
                            );
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 10),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForGotPass()),
                        );
                      },
                      child: Text(
                        'Forgot Your password?',
                        style: TextStyle(color: Colors.white54),
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      '___________________  or  _________________',
                      style: TextStyle(color: Colors.white54),
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.g_mobiledata, color: Colors.white54),
                          Text(
                            'Log in with your Google account',
                            style: TextStyle(color: Colors.white54),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}






