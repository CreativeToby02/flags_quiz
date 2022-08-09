import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        child: Padding(
          padding: const EdgeInsets.fromLTRB(35, 5, 20, 0),
          child: Column(
            children: [
              Row(
                children: const [
                  FlagBox(image: 'flags/ad.png'),
                  SizedBox(width: 20),
                  FlagBox(image: 'flags/ae.png')
                ],
              ),
              Row(
                children: const [
                  FlagBox(image: 'flags/af.png'),
                  SizedBox(width: 20),
                  FlagBox(image: 'flags/ag.png')
                ],
              ),
              Row(
                children: const [
                  FlagBox(image: 'flags/al.png'),
                  SizedBox(width: 20),
                  FlagBox(image: 'flags/am.png')
                ],
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(color: Colors.white, width: 3),
                ),
                width: 350,
                height: 50,
              ),
              const SizedBox(height: 27),
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

class FlagBox extends StatelessWidget {
  const FlagBox({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: SizedBox(
        width: 150,
        height: 150,
        child: Image.asset(image),
      ),
    );
  }
}
