import 'package:flutter/material.dart';
import '../screens/signin_screen.dart';
import '../screens/signup_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Firebase App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: navigateToSignIn,
            child: Text('Sign in'),
          ),
          RaisedButton(
            onPressed: navigateToSignUp,
            child: Text('Sign up'),
          )
        ],
      ),
    );
  }

  void navigateToSignIn() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SignInScreen(),
        fullscreenDialog: true,
      ),
    );
  }

  void navigateToSignUp() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SignupScreen(),
        fullscreenDialog: true,
      ),
    );
  }
}
