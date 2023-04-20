import 'package:flutter/material.dart';
import '../quiz.dart';
import '../settings.dart';

class quiz_3 extends StatefulWidget {
  @override
  _quiz_3 createState() => _quiz_3();
}

class _quiz_3 extends State<quiz_3> {
  int _score = 0;
  final List<Map<String, Object>> _questions = [
    {
      "question": "What does P2P stand for?                ",
      "answers": [
        {"text": "Password to Password", "correct": false},
        {"text": "Peer to Peer", "correct": true},
        {"text": "Product to Product", "correct": false},
        {"text": "Public Key to Private Key", "correct": false},
      ],
    },
    {
      "question": "What is a node?                                      ",
      "answers": [
        {"text": "Cryptocurrency", "correct": false},
        {"text": "An exchange", "correct": false},
        {"text": "A marketplace", "correct": false},
        {"text": "A computer on a Blockchain network", "correct": true},
      ],
    },
    {
      "question": "Where do you store your cryptocurrency?",
      "answers": [
        {"text": "Bank account", "correct": false},
        {"text": "Special a5 paper", "correct": false},
        {"text": "Wallet", "correct": true},
        {"text": "On a set of keys", "correct": false},
      ],
    },
    {
      "question": "What is a miner(in digital terms)?",
      "answers": [
        {"text": "A type of blockchain", "correct": false},
        {"text": "A person doing calculations to verify transactions", "correct": false},
        {"text": "Computers that validate and process blockchain transactions", "correct": true},
        {"text": "Not a real thing", "correct": false},
      ],
    },
    {
      "question": "What is cold storage?                                ",
      "answers": [
        {"text": "A place to hang your coat", "correct": false},
        {"text": "A private key connected to the Internet", "correct": false},
        {"text": "A private key not connected to the Internet", "correct": true},
        {"text": "A desktop wallet", "correct": false},
      ],
    },
    {
      "question": "What is a genesis block?",
      "answers": [
        {"text": "A famous block that hardcoded a hash of the Book of Genesis onto the blockchain", "correct": false},
        {"text": "The first block of a Blockchain", "correct": true},
        {"text": "The 2nd transaction of a Blockchain", "correct": false},
      ],
    },
    {
      "question": "What is a private key?                                                   ",
      "answers": [
        {"text": "A key on your key chain", "correct": false},
        {"text": "A key given to the public", "correct": false},
        {"text": "A key not to be given to the public", "correct": true},
        {"text": "A key that opens a secret door", "correct": false},
      ],
    },
    {
      "question": "What is Proof of Stake?                                                    ",
      "answers": [
        {"text": "A certificate needed to use the blockchain", "correct": false},
        {"text": "A password needed to access an exchange", "correct": false},
        {"text": "How private keys are made", "correct": false},
        {"text": "A transaction and block verification protocol", "correct": true},
      ],
    },
    {
      "question": "Which does Asymmetric encryption use?",
      "answers": [
        {"text": "Public keys only", "correct": false},
        {"text": "Private keys only", "correct": false},
        {"text": "Proof of Stake", "correct": false},
        {"text": "Public and Private keys", "correct": true},
      ],
    },
    {
      "question": "What is a blockchain?                                          ",
      "answers": [
        {"text": "An exchange", "correct": false},
        {"text": "A type of cryptocurrency", "correct": false},
        {"text": "A distributed ledger on a peer to peer network", "correct": true},
        {"text": "A centralized ledger", "correct": false},
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
        title: const Text("Blockchain Quiz"),
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


