import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EXCESS",
          style: TextStyle(
            fontSize: 50,
            color: Colors.blue,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text("Jha", style: TextStyle(fontSize: 50)),
                  Text("Ram", style: TextStyle(fontSize: 50)),
                  Text("Ram", style: TextStyle(fontSize: 50)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Ram", style: TextStyle(fontSize: 50)),
                      Text("Ram", style: TextStyle(fontSize: 50)),
                      Text("Ram", style: TextStyle(fontSize: 50)),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text("Ram", style: TextStyle(fontSize: 50)),
                  Text("Ram", style: TextStyle(fontSize: 50)),
                  Text("Ram", style: TextStyle(fontSize: 50)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Ram", style: TextStyle(fontSize: 50)),
                  Text("Ram", style: TextStyle(fontSize: 50)),
                  Text("Ram", style: TextStyle(fontSize: 50)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
