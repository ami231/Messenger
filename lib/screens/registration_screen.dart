import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mymessenger/screens/chat_screen.dart';

class RegistrationScreen extends StatefulWidget {
  static const String name = 'registration_screen';

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close)),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 45.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Icon(
                      CupertinoIcons.chat_bubble_text_fill,
                      size: 70.0,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            border: Border.all(color: Colors.deepOrange)),
                        child: TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          decoration:
                              InputDecoration.collapsed(hintText: 'username'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        padding: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            border: Border.all(color: Colors.deepOrange)),
                        child: TextField(
                          onChanged: (value) {
                            password = value;
                          },
                          obscureText: true,
                          decoration:
                              InputDecoration.collapsed(hintText: 'password'),
                        ),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () async {
                        try {
                          final newUser =
                              await _auth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          if (newUser != null) {
                            Navigator.pushNamed(context, ChatScreen.name);
                          }
                        } catch (e) {
                          print(e);
                        }
                      },
                      color: Colors.red,
                      elevation: 3,
                      minWidth: 200.0,
                      height: 50.0,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.0))),
                      child: Text(
                        'Register',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
          ],
        )),
      ),
    );
  }
}
