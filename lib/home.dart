import 'package:app/authentification.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Future<void> signOut() async {
    await Authentification().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: signOut,
          child: Text("sign out"),
        ),
      ),
    );
  }
}
