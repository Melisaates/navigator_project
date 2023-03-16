import 'package:flutter/material.dart';
import 'package:flutter_applicationnnn/screens/secondScreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<FirstScreen> {
  int my_choose = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("first screen")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  my_choose = 0;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SecondScreen(choose: my_choose)));
                },
                child: const Text("PUSH", style: TextStyle(fontSize: 25))),
            ElevatedButton(
                onPressed: () {
                  my_choose = 1;
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SecondScreen(choose: my_choose)));
                },
                child: const Text("PUSH_REPLACEMENT",
                    style: TextStyle(fontSize: 25)))
          ],
        ),
      ),
    );
  }
}
