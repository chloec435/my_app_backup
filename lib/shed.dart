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
      home: const SHED(title: 'Shed'),
    );
  }
}

class SHED extends StatefulWidget {
  const SHED({super.key, required this.title});

  final String title;

  @override
  State<SHED> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SHED> {
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
              "SHED",
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
