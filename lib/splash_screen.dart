import 'package:flutter/material.dart';

import 'tutorial.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Image.asset('Assets/image.png',
              fit: BoxFit.cover, height: 220, width: 220),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70),
          child: SizedBox(
            height: 80,
            width: 80,
            child: FloatingActionButton(
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Tutorial();
                    },
                  ),
                );
              },
              backgroundColor: Color(0xFF20266e),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
