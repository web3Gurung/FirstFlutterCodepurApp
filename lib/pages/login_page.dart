import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
          child: Text(
        "login page hai yeh",
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
        ),
      )),
    );
  }
}
