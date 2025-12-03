import 'package:flutter/material.dart';
import 'package:my_app/about_us.dart';
import 'package:my_app/building.dart';
import 'package:my_app/learn_more.dart';

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

class `MyHomePage` extends StatefulWidget {
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
<<<<<<< HEAD
=======
      // AppBar with custom fon,
>>>>>>> 5badbd2bb11dc655f028070c83926000441abbe9
      body: Center(
        child: Column(
          children: [
            Image.asset('images/home_logo.png', width: 300.0, height: 300.0),
<<<<<<< HEAD
            Text(
              "FindIt RIT",
              style: TextStyle(
                fontFamily: 'Manara',
=======
            //SizedBox(width: 16.0, height: 16.0),
            Text(
              "FindIt RIT!",
              style: TextStyle(
                fontFamily: 'Manera',
>>>>>>> 5badbd2bb11dc655f028070c83926000441abbe9
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
<<<<<<< HEAD
            SizedBox(width: 8.0, height: 8.0),
            Text(
              "Find Your Way, The Tiger Way",
              style: TextStyle (
                fontFamily: 'Manara',
=======
            Text(
              "Find Your Way The Tiger Way!",
              style: TextStyle(
                fontFamily: 'Manera',
>>>>>>> 5badbd2bb11dc655f028070c83926000441abbe9
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
<<<<<<< HEAD
            ElevatedButton(
              onPressed: () {
                print('Welcone to FindIt RIT');
=======
            SizedBox(width: 16.0, height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(title: 'Second Page'),
                  ),
                );
>>>>>>> 5badbd2bb11dc655f028070c83926000441abbe9
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
<<<<<<< HEAD
            SizedBox (width: 16, height: 16),
            ElevatedButton(
              onPressed: () {
                print('Learn more');
              },
              child: const Text('Learn More'),
=======
            SizedBox(width: 16.0, height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUs(title: 'Learn More'),
                  ),
                );
              },
              child: const Text('Learn More..'),
>>>>>>> 5badbd2bb11dc655f028070c83926000441abbe9
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