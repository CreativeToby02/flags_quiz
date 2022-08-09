import 'package:flutter/material.dart';
import 'screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flag Quiz'),
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.purple, Colors.blue])),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Image.asset(
                  'flags/globe.png',
                  width: 300,
                ),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyHomePage()));
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green.shade500,
                    width: 150,
                    height: 60,
                    child: const Text(
                      'Start',
                      style: TextStyle(fontSize: 28),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 102,
              ),
              Container(
                color: Colors.black,
                width: double.maxFinite,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: const [
                      Text('Your Score: 0',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                      Text('Best Score: 0',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
