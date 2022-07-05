import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_signin_screen.dart';

class Tutorial extends StatelessWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('Assets/img.png',
                fit: BoxFit.cover, height: 250, width: 250),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.black38, fontSize: 20),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return LoginSigninScreen();
                    }));
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.black38, fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
