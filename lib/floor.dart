import 'package:flutter/material.dart';
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
      home: const FloorPage(title: 'Building?'),
    );
  }
}

class FloorPage extends StatefulWidget {
  const FloorPage({super.key, required this.title});

  final String title;

  @override
  State<FloorPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FloorPage> {
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
              "What floor are you on in the SHED?",
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
              menuStyle: MenuStyle(
                backgroundColor: WidgetStateProperty.resolveWith((states) {
                  return Color.fromARGB(255, 255, 196, 153);
                }),
              ),
              dropdownMenuEntries: const [
                DropdownMenuEntry(value: 'A', label: 'A'),
                DropdownMenuEntry(value: '1', label: '1'),
                DropdownMenuEntry(value: '2', label: '2'),
                DropdownMenuEntry(value: '3', label: '3'),
                DropdownMenuEntry(value: '4', label: '4'),
              ],
            ),
            SizedBox(width: 16.0, height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // Distributes space evenly between buttons
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            MyHomePage(title: 'My Home Page '),
                      ),
                    );
                  },

                  child: const Text('←'),
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
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FloorPage(title: 'Floor Page'),
                      ),
                    );
                  },
                  child: const Text('→'),
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
          ],
        ),
      ),
    );
  }
}
