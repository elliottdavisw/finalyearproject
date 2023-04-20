import 'package:flutter/material.dart';
import '../quiz.dart';
import '../settings.dart';

class quiz_1 extends StatefulWidget {
  @override
  _quiz_1 createState() => _quiz_1();
}

class _quiz_1 extends State<quiz_1> {
  int _score = 0;
  List<Map<String, Object>> _questions = [
    {
      "question": "What does the CIA triad/triangle stand for?",
      "answers": [
        {"text": "Confidence, Inspiration, Admirability", "correct": false},
        {"text": "Confidentiality, Integrity, Availability", "correct": true},
        {"text": "Central Intelligence Agency", "correct": false},
        {"text": "Coal Intrusive Attacks", "correct": false},
      ],
    },
    {
      "question": "How can attacks against a system/network happen?",
      "answers": [
        {"text": "Only online (Virtually)", "correct": false},
        {"text": "Only inperson", "correct": false},
        {"text": "Both", "correct": true},
      ],
    },
    {
      "question": "How many layers are there to the OSI model?",
      "answers": [
        {"text": "5", "correct": false},
        {"text": "7", "correct": true},
        {"text": '2', "correct": false},
        {"text": "14", "correct": false},
        {"text": "8", "correct": false},
      ],
    },
    {
      "question": "What does a VPN do?                                                ",
      "answers": [
        {"text": "Routes your ISP to your neighbours via the VPN", "correct": false},
        {"text": "Makes you more likely to be a victim of an attack", "correct": false},
        {"text": "Routes your ISP to a different server via the VPN", "correct": true},
        {"text": "Nothing", "correct": true},
      ],
    },
    {
      "question": "How do you prevent identity theft?",
      "answers": [
        {"text": "Wearing a disguise while using your webcam", "correct": false},
        {"text": "Posting your personal information to Facebook", "correct": false},
        {"text": "Not sharing private information online", "correct": true},
      ],
    },
    {
      "question": "Can a DDoS attack effect anybody?",
      "answers": [
        {"text": "Yes", "correct": true},
        {"text": "No", "correct": false},
      ],
    },
    {
      "question": "What happens during a DDoS attack?",
      "answers": [
        {"text": "The router is unplugged by the attacker", "correct": false},
        {"text": "The router is targeted by a botnet or other attack vectors", "correct": true},
        {"text": "The router gets too hot", "correct": false},
        {"text": "It drains the routers battery", "correct": false},
      ],
    },
    {
      "question": "What is the most common method of Phishing attack?",
      "answers": [
        {"text": "Email Phishing Attacks", "correct": true},
        {"text": "Hand delivered pieces of paper", "correct": false},
        {"text": "Impersonation", "correct": false},
      ],
    },
    {
      "question": "Which of these can be real attacks?",
      "answers": [
        {"text": "Man in the Middle attack", "correct": false},
        {"text": "Session Hijacking", "correct": false},
        {"text": "Drive-by Downloads", "correct": false},
        {"text": "All of the above", "correct": true},
      ],
    },
    {
      "question": "Should you ever leave a device with sensitive data unattended?",
      "answers": [
        {"text": "Sometimes", "correct": false},
        {"text": "Always", "correct": false},
        {"text": "Never", "correct": true},
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
        title: const Text("Cyber Security Quiz"),
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
            print("Container finalscore $score/10");
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


