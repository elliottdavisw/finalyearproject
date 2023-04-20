import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class settings extends StatefulWidget {
  @override
  _settings createState() => _settings();
}

class _settings extends State<settings> {
  final _auth = FirebaseAuth.instance;
  final userdisplay = FirebaseAuth.instance.currentUser?.email;

  void _deleteAccount() async {
    final user = _auth.currentUser;
    if (user != null) {
      await user.delete();
    }
    Navigator.push(context,MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Settings"),
      ),
      body: Padding(
      padding: const EdgeInsets.all(20),
        child: Column(
            children: [
              Container(
                alignment: Alignment.center,
              ),
              Text("Welcome: $userdisplay\n"),
            ElevatedButton(
              onPressed: () =>
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) =>
                        AlertDialog(
                          title: const Text("Logout?"),
                          content: const Text("Are you sure you want to logout?."),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()));
                                print("Logout Successful");
                              },
                              child: const Text("Yes"),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, "Cancel"),
                              child: const Text("No"),
                            ),
                          ],
                        ),
                  ),
              child: const Text("Logout")
          ),
          ],
        ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: ElevatedButton(
            onPressed: () =>
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) =>
                      AlertDialog(
                        title: const Text("Delete Account?"),
                        content: const Text("Are you sure you want to delete your account, if so all your data will be deleted and you will have to register again."),
                        actions: <Widget>[
                          TextButton(
                            onPressed: _deleteAccount,
                            child: const Text("Ok"),
                          ),
                          TextButton(
                            onPressed: () => Navigator.pop(context, "Cancel"),
                            child: const Text("No"),
                          ),
                        ],
                      ),
                ),
            child: const Text("Delete Account")),
        ),
    );
  }
}





