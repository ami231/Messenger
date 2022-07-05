import 'package:flutter/material.dart';
import 'package:mymessenger/screens/starting_screen.dart';
import 'package:mymessenger/screens/registration_screen.dart';
import 'package:mymessenger/screens/login_screen.dart';
import 'package:mymessenger/screens/chat_screen.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Messenger());
}

class Messenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: StartingScreen.name,
      routes: {
        StartingScreen.name: (context) => StartingScreen(),
        LoginScreen.name: (context) => LoginScreen(),
        RegistrationScreen.name: (context) => RegistrationScreen(),
        ChatScreen.name: (context) => ChatScreen(),
      },
    );
  }
}
