import 'package:finalyearproject/homepage.dart';
import 'package:finalyearproject/learning/learning1.dart';
import 'package:finalyearproject/learning/learning2.dart';
import 'package:finalyearproject/learning/learning3.dart';
import 'package:finalyearproject/learning/learning4.dart';
import 'package:flutter/material.dart';
import 'settings.dart';


class learning extends StatefulWidget {
  @override
  _learning createState() => _learning();
}

class _learning extends State<learning> {
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
        title: const Text("Learning"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => learning1()));
                  print("Quiz 1 Clicked");
                },
                child: Container(
                  height: 100,
                  color: Colors.pink,
                  child: const Center(
                    child: Text("Cyber Security Basics", style: TextStyle(color: Colors.white, fontSize: 24.0),),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => learning2()));
                  print("Quiz 2 Clicked");
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => learning3()));
                  print("Quiz 2 Clicked");
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => learning4()));
                  print("Quiz 2 Clicked");
                },
                child: Container(
                  height: 100,
                  color: Colors.pink,
                  child: const Center(
                    child: Text("Internet Safety", style: TextStyle(color: Colors.white, fontSize: 24.0),),
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

