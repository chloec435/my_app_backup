import 'package:flutter/material.dart';

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
      home: const SecondPage(title: 'Building?'),
    );
  }
}

class SecondPage extends StatefulWidget {
  const SecondPage({super.key, required this.title});

  final String title;

  @override
  State<SecondPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SecondPage> {
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
              "What building are you trying to find?",
              style: TextStyle(
                fontFamily: 'Manera',
                fontSize: 36,
                fontStyle: FontStyle.normal,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 16.0, height: 16.0),
            DropdownMenu(
              dropdownMenuEntries: const [
                DropdownMenuEntry(
                  value: '1',
                  label: 'SHED (Student Hall of Exploration and Development)',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
