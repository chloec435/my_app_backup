import 'package:flutter/material.dart';
import 'package:my_app/building.dart';
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
      home: const AboutUs(title: 'Shed'),
    );
  }
}

class AboutUs extends StatefulWidget {
  const AboutUs({super.key, required this.title});

  final String title;

  @override
  State<AboutUs> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // AppBar with custom fon,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 100.0, height: 100.0),
              Text(
                "About Us",
                style: TextStyle(
                  fontFamily: 'Manera',
                  fontSize: 48,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                """FindIt RIT! is a student-built navigation tool designed to make getting around campus faster, easier, and stress-free. Our app helps users locate RIT buildings, classrooms, bathrooms, and vending machines. All with step-by-step guidance and clear floor-level directions. Whether you're new to campus or rushing to your next class, FindIt RIT! gives you the confidence to get where you need to be. 
                """,
                style: TextStyle(
                  fontFamily: 'Manera',
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                """This app is built using Flutter, enabling a smooth cross-platform experience. Our design team created custom 3D models and intuitive layouts to make navigation simple and visually clear. Features include building selection, room number search, amenity lookup, written directions, and guided path visuals such as arrows or paw-prints.""",
                style: TextStyle(
                  fontFamily: 'Manera',
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row{
                mainAxisAlignment: MainAxisAlignment.center,
                children<Widget>[
                  Image.asset('images/chloe.png', width: 100.0, height: 100.0),
                  SizedBox(width: 16.0, height: 16.0),
                  Image.asset('images/suhani.png', width: 100.0, height: 100.0),
                ],
              }
              SizedBox(width: 150, height: 150),
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
                          builder: (context) =>
                              SecondPage(title: 'Second Page'),
                        ),
                      );
                    },
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
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FloorPage(title: 'Floor Page '),
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
      ),
    );
  }
}
