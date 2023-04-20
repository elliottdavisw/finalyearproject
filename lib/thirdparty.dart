import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'settings.dart';


class thirdparty extends StatefulWidget {
  @override
  _thirdparty createState() => _thirdparty();
}

class _thirdparty extends State<thirdparty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings_rounded),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => settings()));
            },
          ),
        ],
        title: const Text("Third Party Sites"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           const Padding(
           padding: EdgeInsets.only(left: 20,top: 0,right: 20, bottom: 0),
           child: Text("Here are some trusted third party websites to expand your learning!\n",textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20.0)),
           ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                            onTap: _launchUrl,
                            child: Image.asset("assets/images/labs.png", width:200, height:175),
                            ),
                  const Text("Cybersecurity Training"),
                          ],
                    ),
              Column(
                children: [
                  GestureDetector(
                    onTap: _launchUrl2,
                    child: Image.asset("assets/images/blockchain.png", width:200, height:175),
                  ),
                  const Text("Blockchain Learning"),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: _launchUrl3,
                    child: Image.asset("assets/images/tryhackme_logo.png", width:200, height:175),
                  ),
                  const Text("Hands on cyber security training"),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: _launchUrl4,
                    child: Image.asset("assets/images/immunefi.png", width:200, height:175),
                  ),
                  const Text("Whitehat Hacking"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final Uri _url = Uri.parse("https://www.immersivelabs.com");
final Uri _url2 = Uri.parse("https://www.blockchain.com");
final Uri _url3 = Uri.parse("https://tryhackme.com/");
final Uri _url4 = Uri.parse("https://immunefi.com/");


Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception("Could not launch $_url");
  }
}

Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw Exception("Could not launch $_url");
  }
}

Future<void> _launchUrl3() async {
  if (!await launchUrl(_url3)) {
    throw Exception("Could not launch $_url");
  }
}

Future<void> _launchUrl4() async {
  if (!await launchUrl(_url4)) {
    throw Exception("Could not launch $_url");
  }
}

