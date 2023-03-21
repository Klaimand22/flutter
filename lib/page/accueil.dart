import 'package:escape_game/page/Defi1.dart';
import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key, required this.title});

  final String title;

  @override
  State<Accueil> createState() => AccueilState();
}

class AccueilState extends State<Accueil> {
  TextEditingController codecontroller = TextEditingController();
  var defi1 = false;
  void switchPage() {
    if (defi1 == true) {}
  }

  void code() {
    if (codecontroller.text == "1234") {
      setState(() {
        defi1 = true;
      });
      print(codecontroller.text);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Defi1()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(child: Text("Defi 1"), onPressed: switchPage),
            ElevatedButton(
              child: Text("Defi 1"),
              onPressed: switchPage,
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shadowColor: Colors.grey,
                elevation: 5,
              ),
            ),
            TextField(
              onSubmitted: (value) => code(),
              keyboardType: TextInputType.number,
              controller: codecontroller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Code',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// create widget button with style 



