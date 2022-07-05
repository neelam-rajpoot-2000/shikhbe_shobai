import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'signin_screen.dart';

class LoginSigninScreen extends StatefulWidget {
  const LoginSigninScreen({Key? key}) : super(key: key);

  @override
  State<LoginSigninScreen> createState() => _LoginSigninScreenState();
}

class _LoginSigninScreenState extends State<LoginSigninScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              bottom: TabBar(
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.black,
                indicatorColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                tabs: [
                  Tab(text: "Sign Up"),
                  Tab(text: "Login"),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                SignInScreen(),
                LoginScreen(),
              ],
            ),

          ),
        ),
      ),
    );
  }
}
