import 'package:flutter/material.dart';
import 'settings.dart';
import 'package:url_launcher/url_launcher.dart';

class placement extends StatefulWidget {
  @override
  _placement createState() => _placement();
}

class _placement extends State<placement> {
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
        title: const Text("Placement"),
      ),
      body: Column(
        children: [
          const Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
            child: Text("Here are placement websites or opportunities!\n",textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 20.0)),
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: _launchUrl,
                    child: Image.asset("assets/images/ntu_employ.jpg", width:200, height:125),
                  ),
                ],
              ),
              const Expanded(
                child: Text("StudentHub Employability brought to you by NTU"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: _launchUrl2,
                    child: Image.asset("assets/images/google.jpg", width:200, height:125),
                  ),
                ],
              ),
              const Expanded(
                child: Text("Cybersecurity Jobs brought to you by Google"),
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
                    child: Image.asset("assets/images/prospects.png", width:200, height:125),
                  ),
                ],
              ),
              const Expanded(
                child: Text("Job finder for graduates brought to you by Prospects"),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: _launchUrl4,
                    child: Image.asset("assets/images/linkedin.png", width:200, height:125),
                  ),
                ],
              ),
              const Expanded(
                child: Text("Cybersecurity Jobs brought to you by LinkedIn"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final Uri _url = Uri.parse("https://www.ntu.ac.uk/studenthub/student-help-advice-and-services/employability");
final Uri _url2 = Uri.parse("https://www.google.com/search?q=cyber+security+opportunities+jobs&sxsrf=APwXEdeVpMdZblgqJCChpJvUrqjWwhgmcA:1681609914817&ei=ulQ7ZLzAMeaDhbIPo5KW2AM&uact=5&oq=cyber+security+opportunities+jobs&gs_lcp=Cgxnd3Mtd2l6LXNlcnAQAzIGCAAQFhAeMgYIABAWEB4yCAgAEIoFEIYDMggIABCKBRCGAzIICAAQigUQhgMyCAgAEIoFEIYDOgoIABBHENYEELADSgQIQRgAUJEJWIYMYPoMaAJwAXgAgAFhiAGJApIBATOYAQCgAQHIAQjAAQE&sclient=gws-wiz-serp&ibp=htl;jobs&sa=X&ved=2ahUKEwjXn96Rpa3-AhUKa8AKHXKmDfUQudcGKAF6BAgYECo#htivrt=jobs&htidocid=FB9uwJOQhCEAAAAAAAAAAA%3D%3D&fpstate=tldetail");
final Uri _url3 = Uri.parse("https://www.prospects.ac.uk/");
final Uri _url4 = Uri.parse("https://uk.linkedin.com/jobs/cyber-security-jobs?position=1&pageNum=0");


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

