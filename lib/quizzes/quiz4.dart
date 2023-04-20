import 'package:flutter/material.dart';
import '../quiz.dart';
import '../settings.dart';

class quiz_4 extends StatefulWidget {
  @override
  _quiz_4 createState() => _quiz_4();
}

class _quiz_4 extends State<quiz_4> {
  int _score = 0;
  final List<Map<String, Object>> _questions = [
    {
      "question": "Which of the following is not a type of virus?",
      "answers": [
        {"text": "Boot sector", "correct": false},
        {"text": "File-infecting", "correct": false},
        {"text": "Trojans", "correct": true},
        {"text": "Web Scripting", "correct": false},
      ],
    },
    {
      "question": "How can a system be best defended against viruses?",
      "answers": [
        {"text": "Browsing infected websites", "correct": false},
        {"text": "Offical Antivirus", "correct": true},
        {"text": "USB stick found in a park", "correct": false},
      ],
    },
    {
      "question": "_______________ infects the master boot record and it is challenging and a complex task to remove this virus?",
      "answers": [
        {"text": "HTML", "correct": false},
        {"text": "Boot Sector Virus", "correct": true},
        {"text": "Polymorphic", "correct": false},
        {"text": "Multipartite", "correct": false},
        {"text": "Trojans", "correct": false},
      ],
    },
    {
      "question": "Which of the following is not a reason why people create a computer virus?",
      "answers": [
        {"text": "Research purpose", "correct": false},
        {"text": "Pranks", "correct": false},
        {"text": "Financial gains", "correct": false},
        {"text": "Protection", "correct": true},
      ],
    },
    {
      "question": "______________ are difficult to identify as they keep on changing their type and signature",
      "answers": [
        {"text": "Non-resident virus", "correct": false},
        {"text": "Boot Sector Virus", "correct": false},
        {"text": "Polymorphic Virus", "correct": true},
        {"text": "Multipartite Virus", "correct": false},
      ],
    },
  ];

  int _questionIndex = 0;

  void _answerQuestion(bool isCorrect) {
    setState(() {
      if (isCorrect) {
        _score++;
      }
      if (_questionIndex < _questions.length - 1) {
        _questionIndex++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => ResultsPage(score: _score),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => settings()));
            },
          ),
        ],
        title: const Text("Attack Vectors Quiz"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _questions[_questionIndex]["question"] as String,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ...(_questions[_questionIndex]["answers"]
            as List<Map<String, Object>>)
                .map((answer) => ElevatedButton(
              child: Text(answer["text"] as String),
              onPressed: () =>
                  _answerQuestion(answer["correct"] as bool),
            ))
                .toList(),
          ],
        ),
      ),
    );
  }
}

class ResultsPage extends StatelessWidget {
  final int score;
  ResultsPage({required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text("Results"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => quiz()));
                  print("Container finalscore clicked");
                },
                child: Container(
                  height: 100,
                  color: Colors.pink,
                  child: Center(
                    child: Text("Your final score is: $score/5", style: const TextStyle(color: Colors.white, fontSize: 24.0),),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}


