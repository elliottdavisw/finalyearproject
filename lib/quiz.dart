import 'package:finalyearproject/homepage.dart';
import 'package:finalyearproject/quizzes/quiz1.dart';
import 'package:finalyearproject/quizzes/quiz2.dart';
import 'package:finalyearproject/quizzes/quiz3.dart';
import 'package:finalyearproject/quizzes/quiz4.dart';

import 'package:flutter/material.dart';
import 'settings.dart';



class quiz extends StatefulWidget {
  @override
  _quiz createState() => _quiz();
}

class _quiz extends State<quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => settings()));
            },
          ),
        ],
        title: const Text("Quizzes"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => quiz_1()));
                print("Quiz 1 Clicked");
              },
              child: Container(
                height: 100,
                color: Colors.pink,
                child: Center(
                  child: Text("Cyber Security Quiz", style: TextStyle(color: Colors.white, fontSize: 24.0),),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => quiz_2()));
                print("Quiz 2 Clicked");
              },
              child: Container(
                height: 100,
                color: Colors.pink,
                child: const Center(
                  child: Text("Cyber Security Quiz 2", style: TextStyle(color: Colors.white, fontSize: 24.0),),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => quiz_3()));
                print("Quiz 3 Clicked");
              },
              child: Container(
                height: 100,
                color: Colors.pink,
                child: const Center(
                  child: Text("Blockchain", style: TextStyle(color: Colors.white, fontSize: 24.0),),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => quiz_4()));
                print("Quiz 4 Clicked");
              },
              child: Container(
                height: 100,
                color: Colors.pink,
                child: const Center(
                  child: Text("Attack Vectors", style: TextStyle(color: Colors.white, fontSize: 24.0),),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
                print("Go back clicked");
              },
              child: Container(
                height: 50,
                color: Colors.black,
                child: const Center(
                  child: Text("Go Back", style: TextStyle(color: Colors.white, fontSize: 24.0),),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
        ]
        ),
      ),
    );
  }
}


