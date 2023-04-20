import 'package:finalyearproject/settings.dart';
import 'package:flutter/material.dart';


class learning1 extends StatefulWidget {
  @override
  _learning1 createState() => _learning1();
}

class _learning1 extends State<learning1> {
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
        title: const Text("Cyber Security"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
            children: [
              Container(
                alignment: Alignment.center,
              ),
              const Center(
                 child: Text("Lets learn about cyber security!", style: TextStyle(fontSize: 25.0, decoration: TextDecoration.underline,decorationColor: Colors.black, fontWeight: FontWeight.bold),),
        ),
              const Text("The first questions your asking yourself is what is cyber security?", textAlign: TextAlign.center,),
              const Text("\nCyber Security is the process and techniques involved in protecting sensitive data, computer systems, networks, and software applications from cyber attacks.",textAlign: TextAlign.center),
              const Text("\nFour Fundamentals of Cybersecurity",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
              const Text("•Device Protection\n•Securing Online Connection\n•Securing Email Communication\n•Protecting and Performing Timely Backups of Files and Documents"),
              const Text("\nKey Concept of Cybersecurity",style: TextStyle(fontWeight: FontWeight.bold),),
              const Text("Cybersecurity refers to protecting systems, networks, programs, devices, and data from cyber-attacks using technologies, processes, and controls. The basic cybersecurity concepts involve reducing cyber-attack risks and preventing unauthorized access to systems, networks, and technologies."),
              const Text("\nFive Primary Key Concepts of Cybersecurity", style: TextStyle(fontWeight: FontWeight.bold),),
              const Text("•Threat identification\n•Keeping information safe\n•Detecting intrusions and attacks\n•Respond to intrusions and attacks\n•Rebuild intrusion defenses and recover database security"),
              const Text("\nCybersecurity Best Practices", style: TextStyle(fontWeight: FontWeight.bold),),
              const Text("Keeping software regularly updated and patched to ensure no known vulnerabilities can be taken advantage of. Ensure the computer has antiviruses and security management that should repel any viruses. Ensure another form of authenitcation is setup whether this being 2FA or MFA. Using a VPN whilst using online services as it makes a more secure network."),
            ],
    ),
    ),
    );
  }
}

