import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginDetails extends StatelessWidget {
  final String email;
  final String password;

  const LoginDetails({Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Text('Email-Id: ${email}'),
          Text('Password: ${password}'),
        ],
      ),
    ));
  }
}
