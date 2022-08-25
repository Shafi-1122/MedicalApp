// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'LoginScreen.dart';
import 'HomeScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => Screen2(
                      title: "null",
                    ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
          child: CircleAvatar(
                                          radius: 40,
                                          backgroundColor: Colors.white,
                                          child: CircleAvatar(
                                              radius: 35,
                                              backgroundImage: AssetImage('assets/employeelogo.jpg')),
                                        ),),
    );
  }
}
