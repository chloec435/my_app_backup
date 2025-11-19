import 'package:flutter/material.dart';
import 'package:my_app/building.dart';

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
      home: const MyHomePage(title: 'FindIt RIT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // AppBar with custom fon,
      body: Center(
        child: Column(
          children: [
            Image.asset('images/home_logo.png', width: 300.0, height: 300.0),
            //SizedBox(width: 16.0, height: 16.0),
            Text(
              "FindIt RIT!",
              style: TextStyle(
                fontFamily: 'Manera',
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "Find Your Way The Tiger Way!",
              style: TextStyle(
                fontFamily: 'Manera',
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 16.0, height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(title: 'Second Page'),
                  ),
                );
              },
              child: const Text('Welcome to FindIt RIT'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(2, 208, 211, 212),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(
                  fontFamily: 'Manera',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(width: 16.0, height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Learn More..'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(2, 208, 211, 212),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(
                  fontFamily: 'Manera',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
