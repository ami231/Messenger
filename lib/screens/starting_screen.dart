import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymessenger/screens/registration_screen.dart';
import 'package:mymessenger/screens/login_screen.dart';

class StartingScreen extends StatefulWidget {
  static const String name = 'starting_screen';

  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.chat_bubble_text_fill,
                      size: 100.0,
                      color: Colors.deepOrangeAccent,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Messenger',
                      style: TextStyle(
                        fontSize: 45.0,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 150.0,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.name);
                      },
                      color: Colors.red,
                      elevation: 3,
                      minWidth: 200.0,
                      height: 50.0,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.0))),
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RegistrationScreen.name);
                        },
                        color: Colors.white,
                        minWidth: 200.0,
                        height: 50.0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0)),
                            side: BorderSide(color: Colors.red, width: 2)),
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.red, fontSize: 18.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        )),
      ),
    );
  }
}
