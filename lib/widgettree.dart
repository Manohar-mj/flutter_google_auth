import 'package:app/home.dart';
import 'package:app/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<User?>(context);
    if (user == null) {
      return LoginPage();
    }
    return HomePage();
  }
}
