import 'package:flutter/material.dart';
import '../quiz.dart';
import '../settings.dart';

class quiz_2 extends StatefulWidget {
  @override
  _quiz_2 createState() => _quiz_2();
}

class _quiz_2 extends State<quiz_2> {
  int _score = 0;
  List<Map<String, Object>> _questions = [
    {
      "question": "Which of the following is the most secure?",
      "answers": [
        {"text": "Passwordless email login", "correct": false},
        {"text": "Yearly software updates", "correct": false},
        {"text": "Multi-factor authentication", "correct": true},
        {"text": "Coal Intrusive Attacks", "correct": false},
      ],
    },
    {
      "question": "Is it smart to backup all files?                                         ",
      "answers": [
        {"text": "Yes", "correct": true},
        {"text": "No", "correct": false},
      ],
    },
    {
      "question": "Can phishing emails look like they have come from a certain email address?",
      "answers": [
        {"text": "Yes", "correct": true},
        {"text": "No", "correct": false},
      ],
    },
    {
      "question": "In the case of a Phishing attack what steps should you take?",
      "answers": [
        {"text": "Reset/disable the accounts targeted before changing the passwords", "correct": true},
        {"text": "Ring the police", "correct": false},
        {"text": "Turn off your computer, wait a day then turn it back on", "correct": true},
        {"text": "Nothing", "correct": false},
      ],
    },
    {
      "question": "How should paper files including sensitive files be disposed off?",
      "answers": [
        {"text": "Throwing them in the bin", "correct": false},
        {"text": "Shredding the documents", "correct": true},
        {"text": "Leaving the in a public cupboard", "correct": false},
      ],
    },
    {
      "question": "Can files be retrieved after being deleted and cleared from recycle bin?",
      "answers": [
        {"text": "Yes", "correct": true},
        {"text": "No", "correct": false},
      ],
    },
    {
      "question": "What staff members need to be trained on cyber security and good internet practices?",
      "answers": [
        {"text": "Only IT staff", "correct": false},
        {"text": "The Janitor", "correct": false},
        {"text": "The office team", "correct": false},
        {"text": "Everybody", "correct": true},
      ],
    },
    {
      "question": "Emails and phone numbers should always be double checked and verified?",
      "answers": [
        {"text": "True", "correct": true},
        {"text": "False", "correct": false},
      ],
    },
    {
      "question": "Should you use a master password for all internet activity?",
      "answers": [
        {"text": "Yes", "correct": false},
        {"text": "No", "correct": true},
      ],
    },
    {
      "question": "Can employees using remote connection to a companies network be a threat?",
      "answers": [
        {"text": "Yes, due to the fact they may get someone else to do their work", "correct": false},
        {"text": "No, they're not physically their so how could they be attacked", "correct": false},
        {"text": "Yes, they could infect the network with any malware running on their personal device", "correct": true},
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
        title: const Text("Cyber Security Quiz 2"),
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
                    child: Text("Your final score is: $score/10", style: const TextStyle(color: Colors.white, fontSize: 24.0),),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}


