import 'package:finalyearproject/settings.dart';
import 'package:flutter/material.dart';


class learning4 extends StatefulWidget {
  @override
  _learning4 createState() => _learning4();
}

class _learning4 extends State<learning4> {
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
        title: const Text("Internet Safety"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
            ),
            const Center(
              child: Text("Lets learn about Internet Safety!", style: TextStyle(fontSize: 25.0, decoration: TextDecoration.underline,decorationColor: Colors.black, fontWeight: FontWeight.bold),),
            ),
            const Text("What is Internet Safety?", textAlign: TextAlign.center,),
            const Text("\nIn simple terms, online safety refers to the act of staying safe online. It is also commonly known as internet safety, e-safety and cyber safety. It encompasses all technological devices which have access to the internet from PCs and laptops to smartphones and tablets.",textAlign: TextAlign.center),
            const Text("\nTop Tips for Internet Safety",style: TextStyle(fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            const Text("•Defend your computer\n•Think before you share sensitive information\n•Think before you click\n•Use strong passwords\n•Protect yourself from e-mail scams\n•Protect your data on the go"),
            const Text("\nKeep Personal Information Professional and Limited",style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Potential employers or customers don't need to know your personal relationship status or your home address. They do need to know about your expertise and professional background, and how to get in touch with you. You wouldn't hand purely personal information out to strangers individually—don't hand it out to millions of people online."),
            const Text("\nKeep Your Privacy Settings On", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Marketers love to know all about you, and so do hackers. Both can learn a lot from your browsing and social media usage. But you can take charge of your information. As noted by Lifehacker, both web browsers and mobile operating systems have settings available to protect your privacy online. Major websites like Facebook also have privacy-enhancing settings available. These settings are sometimes (deliberately) hard to find because companies want your personal information for its marketing value. Make sure you have enabled these privacy safeguards, and keep them enabled."),
            const Text("\nPractice Safe Browsing", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("You wouldn't choose to walk through a dangerous neighborhood—don't visit dangerous neighborhoods online. Cybercriminals use lurid content as bait. They know people are sometimes tempted by dubious content and may let their guard down when searching for it. The Internet's demimonde is filled with hard-to-see pitfalls, where one careless click could expose personal data or infect your device with malware. By resisting the urge, you don't even give the hackers a chance."),
            const Text("\nMake Sure Your Internet Connection is Secure. Use a Secure VPN Connection", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("When you go online in a public place, for example by using a public Wi-Fi connection, PCMag notes you have no direct control over its security. Corporate cybersecurity experts worry about the places where a private network connects to the outside world. Your vulnerable endpoint is your local Internet connection. Make sure your device is secure, and when in doubt, wait for a better time (i.e., until you're able to connect to a secure Wi-Fi network) before providing information such as your bank account number."),
            const Text("\nBe Careful What You Download", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("A top goal of cybercriminals is to trick you into downloading malware—programs or apps that carry malware or try to steal information. This malware can be disguised as an app: anything from a popular game to something that checks traffic or the weather. As PCWorld advises, don't download apps that look suspicious or come from a site you don't trust."),
            const Text("\nChoose Strong Passwords", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Passwords are one of the biggest weak spots in the whole Internet security structure, but there's currently no way around them. And the problem with passwords is that people tend to choose easy ones to remember (such as password and 123456), which are also easy for cyber thieves to guess. Select strong passwords that are harder for cybercriminals to demystify. Password manager software can help you to manage multiple passwords so that you don't forget them. A strong password is one that is unique and complex—at least 15 characters long, mixing letters, numbers and special characters."),
            const Text("\nMake Online Purchases From Secure Sites", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("Any time you make a purchase online, you need to provide credit card or bank account information—just what cybercriminals are most eager to get their hands on. Only supply this information to sites that provide secure, encrypted connections. As Boston University notes, you can identify secure sites by looking for an address that starts with https: (the S stands for secure) rather than simply http: They may also be marked by a padlock icon next to the address bar."),
            const Text("\nBe Careful What You Post", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("The Internet does not have a delete key, as that young candidate in New Hampshire found out. Any comment or image you post online may stay online forever because removing the original (say, from Twitter) does not remove any copies that other people made. There is no way for you to take back a remark you wish you hadn't made, or get rid of that embarrassing selfie you took at a party. Don't put anything online that you wouldn't want your mom or a prospective employer to see."),
            const Text("\nBe Careful Who You Meet Online", style: TextStyle(fontWeight: FontWeight.bold),),
            const Text("People you meet online are not always who they claim to be. Indeed, they may not even be real. As InfoWorld reports, fake social media profiles are a popular way for hackers to cozy up to unwary Web users and pick their cyber pockets. Be as cautious and sensible in your online social life as you are in your in-person social life."),
          ],
        ),
      ),
    );
  }
}

