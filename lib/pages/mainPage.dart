import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_project/pages/guessScreenPage.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Guess Game",
              style: TextStyle(fontSize: 40, color: Colors.redAccent),
            ),
            Icon(
              Icons.question_mark_outlined,
              size: 100,
            ),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                child: Text("Start Game"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => guessScreenPage()));
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
