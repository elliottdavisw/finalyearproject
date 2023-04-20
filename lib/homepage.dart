import 'package:flutter/material.dart';
import 'package:finalyearproject/placement.dart';
import 'package:finalyearproject/learning.dart';
import 'package:finalyearproject/quiz.dart';
import 'package:finalyearproject/thirdparty.dart';
import 'settings.dart';

class homepage extends StatefulWidget {
  @override
  _homepage createState() => _homepage();}

class _homepage extends State<homepage> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => settings()));
            },
          ),
        ],
        title: const Text("Homepage"),
      ),
      body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => learning()));
              print("Container 1 clicked");
            },
            child: Container(
              height: 100,
              color: Colors.pink,
              child: const Center(
                child: Text("Learning", style: TextStyle(color: Colors.white, fontSize: 24.0),),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => quiz()));
              print("Container 1 clicked");
            },
            child: Container(
              height: 100,
              color: Colors.pink,
              child: const Center(
                child: Text("Quizzes", style: TextStyle(color: Colors.white, fontSize: 24.0),),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => thirdparty()));
              print("Container 1 clicked");
            },
            child: Container(
              height: 100,
              color: Colors.pink,
              child: const Center(
                child: Text("Third Party Sites", style: TextStyle(color: Colors.white, fontSize: 24.0),),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => placement()));
              print("Container 1 clicked");
            },
            child: Container(
              height: 100,
              color: Colors.pink,
              child: const Center(
                child: Text("Placement Opportunities", style: TextStyle(color: Colors.white, fontSize: 24.0),),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      ),
      ),
    );
  }
}