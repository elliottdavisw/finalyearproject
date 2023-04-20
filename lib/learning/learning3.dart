import 'package:finalyearproject/settings.dart';
import 'package:flutter/material.dart';


class learning3 extends StatefulWidget {
  @override
  _learning3 createState() => _learning3();
}

class _learning3 extends State<learning3> {
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
        title: const Text("Attack Vectors"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
            ),
            const Center(
              child: Text("Lets learn about attack vectors!", style: TextStyle(fontSize: 25.0, decoration: TextDecoration.underline,decorationColor: Colors.black, fontWeight: FontWeight.bold),),
            ),
            const Text("What are attack vectors?", textAlign: TextAlign.center,),
            const Text("\nAn attack vector is a method of gaining unauthorized access to a network or computer system.", textAlign: TextAlign.center),
            const Text("\nPassive Attack Vector",style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Passive attack vectors are attempts to gain access or make use of information from the system, such as phishing and social engineering attacks."),
            const Text("\nActive Attack Vector", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Active cyber attack vector exploits are attempts to alter a system or affect its operation such as malware, exploiting unpatched vulnerabilities, email spoofing, man-in-the-middle attacks, domain hijacking, and ransomware. These all share a similar goal and that is identifitying a potential target, gathering information about the target, using the information stolen to find and target attack vectors, then gaining access to the system to steal data and or install malware or damaging code."),
            const Text("\nThird & Fourth Party", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("One often overlooked attack vector is your third and fourth-party vendors and service providers. It doesn't matter how sophisticated your internal network security and information security policies are if vendors have access to sensitive data, they are a huge risk to your organization."),
            const Text("\nCommon Attack Vectors", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Compromised credentials and or weak credentials are still the most common type of access credential and continue to be exposed in data leaks, phishing scams, and malware. This is why organisations are investing in tools such as 2FA or MFA to reduce the risk of leaked credentials causing a security incident. "),
            const Text("\nInsider threats such as unhappy employees or malicious insiders can expose private information or vulnerbailites to hackers or competitors"),
            const Text("\nPoor encryption, such as websites without proper HTTP setup, or certificates that are outdated or have vulnerabilities can be used as a method to attack by potential hackers."),
            const Text("\nRansomware is a form of extortion where data is deleted or encrypted unless a ransom is paid, having defence plans and good IT security prevents this type of attack."),
            const Text("\nPhishing is the most common type of attack making up for around 80% of cyber security attacks, this results in sensitive data or credentials being stolen."),
            const Text("\nBrute force attacks are repeated attacks based on trial and error, until one finally works, this utilises all methods of attacks until one prevails."),
            const Text("\nDistributed Denial of Service otherwise known as DDoS, are done by using botnets to attack a service by taking it down or infecting the system, causing huge financal losses."),
            const Text("\nMalware of all types; Trojans, Scripting, Hjacking all of these types of malware can prove devestating as huge amounts of information can be stolen."),
            const Text("\nMan in the middle attacks this happens when a users traffic is stolen, and they can have their session ids taken, or lead to fake websites that can steal details."),
            const Text("\nWhat is Ransomware?",style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Ransomware is a file encryption software program that uses a unique, robust encryption algorithm to encrypt the files on the target system, this generates a unique decryption key for each victim and saves it to a remote server, until a ransom is paid the user will not have their key given back to them and still be locked out of their applications."),
            const Text("\nWhat are Botnet Attacks?", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Botnets are defined as a network or group of connected devices within the same network to execute an attack. This is usually done by hackers on stolen devices and systems, from this DDoS attacks, spam emails and data breaches can occur."),
            const Text("Social Engineering Attacks", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Social engineering is a common tactic used by cybercriminals to gather users private information. It can trick users by displaying fake prizes and huge offers asking for bank details or personal identification and this can be used to commit identity fraud and financial fraud."),
          ],
        ),
      ),
    );
  }
}

