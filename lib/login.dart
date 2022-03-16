import 'package:app/authentification.dart';
import 'package:app/home.dart';
import 'package:app/homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Future<void> signInWithGoogle() async {
    await Authentification().signInWithGoogle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Text("Flutter With Firebase"),
          elevation: 0,
          backgroundColor: Colors.black,
          actions: [
            Icon(
              Icons.mail,
              size: 40,
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        body: Center(
          child: Container(
              child: Container(
                  child: Column(
            children: [
              Image.asset("assets/one.png"),
              SizedBox(
                height: 40,
              ),
              RaisedButton(
                onPressed: signInWithGoogle,
                child: Text(
                  "Login With Google",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                  child: Text('Login with phone number')),
            ],
          ))),
        ));
  }
}
