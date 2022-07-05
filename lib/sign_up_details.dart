import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

class SignUpDetails extends StatelessWidget {
  final String name;

  final String email;
  final String password;

  const SignUpDetails(
      {Key? key,
      required this.name,
      required this.email,
      required this.password})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Text('UserName: ${name}'),
          Text('Email-Id: ${email}'),
          Text('Password: ${password}'),
        ],
      ),
    ));
  }
}
