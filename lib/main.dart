import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmPasswordController = TextEditingController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const login(title: ""),
    );
  }
}

class login extends StatefulWidget {
  const login({super.key, required this.title});

  final String title;
  @override
  State<login> createState() => _login();
}

class _login extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome to NTULearn"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
        child: Column(
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextFormField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Password"),
            ),
            TextFormField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Confirm Password"),
            ),
            ElevatedButton(
              child: const Text("Login"),
              onPressed: () async {
                try {
                  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
                  print("Login Successful");
                } on FirebaseAuthException catch (e) {
                  if (e.code == "user-not-found") {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) =>
                          AlertDialog(
                            content: const Text("No user found"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, "Cancel");
                                },
                                child: const Text("Ok"),
                              ),
                            ],
                          ),
                    );
                    print("No user found for that email.");
                  } else if (e.code == "wrong-password") {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) =>
                          AlertDialog(
                            content: const Text("Incorrect Password"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, "Cancel");
                                },
                                child: const Text("Ok"),
                              ),
                            ],
                          ),
                    );
                    print("Wrong password provided for that user.");
                  }
                }
              },
            ),
            ElevatedButton(
              child: const Text("Register"),
              onPressed: () async {
                try {
                  UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
                  print("Registration Successful");
                } on FirebaseAuthException catch (e) {
                  if (e.code == "email-already-in-use") {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) =>
                          AlertDialog(
                            content: const Text("Account already registered"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, "Cancel");
                                },
                                child: const Text("Ok"),
                              ),
                            ],
                          ),
                    );
                    print("Email already in use.");
                  } else if (e.code == "weak-password") {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) =>
                          AlertDialog(
                            content: const Text("Weak password add more characters"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, "Cancel");
                                },
                                child: const Text("Ok"),
                              ),
                            ],
                          ),
                    );
                    print("Password is too weak.");
                  } else if (e.code == "invalid-email") {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) =>
                          AlertDialog(
                            content: const Text("Invalid email make sure it follows format test@test.com"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, "Cancel");
                                },
                                child: const Text("Ok"),
                              ),
                            ],
                          ),
                    );
                    print("Invalid email.");
                  }
                }
              },
            ),
            const Text("\n\n"),
            Image.asset("assets/images/ntulogo.png", width:250, height:175),
          ],
        ),
      ),
      ),
    );
  }
}


