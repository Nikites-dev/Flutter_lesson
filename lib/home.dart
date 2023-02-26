import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Что это?',
      home: new Scaffold(
        backgroundColor: Colors.amber,
        body: Center(
            child: SizedBox(
          child: Text("Это home"),
        )),
      ),
    );
  }
}
