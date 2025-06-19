import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_flutter_app/Day3/day3.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 500), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SigninScreen(name: "Hello");
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Flutter Bootcamp 1.0",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
