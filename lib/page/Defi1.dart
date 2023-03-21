import 'package:flutter/material.dart';

class Defi1 extends StatefulWidget {
  const Defi1({super.key});

  @override
  State<Defi1> createState() => Defi1State();
}

class Defi1State extends State<Defi1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Defi 1"),
          leading: ElevatedButton(
              child: Icon(Icons.arrow_left),
              onPressed: () => Navigator.pop(context)),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Defi 1"),
            ],
          ),
        ));
  }
}
