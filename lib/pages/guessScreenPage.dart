import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/pages/resultPage.dart';

class guessScreenPage extends StatefulWidget {
  const guessScreenPage({super.key});

  @override
  State<guessScreenPage> createState() => _guessScreenState();
}

class _guessScreenState extends State<guessScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Page"),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Healt Remaining : ",
              style: TextStyle(fontSize: 30, color: Colors.redAccent),
            ),
            Text(
              "Tip : ",
              style: TextStyle(color: Colors.blueAccent, fontSize: 20),
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(),
                label: Text("Enter a number"),
              ),
            ),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                child: Text("Guess"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => resultPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
