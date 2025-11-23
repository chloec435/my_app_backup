import 'package:flutter/material.dart';
import 'package:my_app/floor.dart';
import 'package:my_app/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: const LearnMore(title: 'Shed'),
    );
  }
}

class LearnMore extends StatefulWidget {
  const LearnMore({super.key, required this.title});

  final String title;

  @override
  State<LearnMore> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LearnMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // AppBar with custom fon,
      body: Center(
        child: Column(
          children: [
            SizedBox(width: 225.0, height: 225.0),
            Text(
              "About Us!",
              style: TextStyle(
                fontFamily: 'Manera',
                fontSize: 36,
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "",
              style: TextStyle(
                fontFamily: 'Manera',
                fontSize: 36,
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
