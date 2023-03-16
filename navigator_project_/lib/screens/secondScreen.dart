import 'package:flutter/material.dart';
import 'package:flutter_applicationnnn/screens/firstScreen.dart';

class SecondScreen extends StatefulWidget {
  final int choose;

  SecondScreen({super.key, required this.choose});

  @override
  State<SecondScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Second screen "),
        ),
        body: Center(
          child: Column(
            children: [
              if (widget.choose == 0)
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("POP", style: TextStyle(fontSize: 25)),
                ),
              if (widget.choose == 1)
                ElevatedButton(
                  onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstScreen())),
                  child: const Text("PUSH REPLACEMENT",
                      style: TextStyle(fontSize: 25)),
                ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SecondScreen(
                                choose: 1,
                              )));
                },
                child: const Text("NEW SCREEN", style: TextStyle(fontSize: 25)),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("NEW SCREEN", style: TextStyle(fontSize: 25)),
              ),
            ],
          ),
        ));
  }
}
