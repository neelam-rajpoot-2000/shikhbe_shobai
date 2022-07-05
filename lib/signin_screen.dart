import 'package:flutter/material.dart';
import 'package:shikhbe_shobai/validator.dart';
import 'facebook.dart';
import 'sign_up_details.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var _passwordVisible;
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 40),
                fillColor: Colors.black12,
                filled: true,
                hintText: 'Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 40),
                fillColor: Colors.black12,
                filled: true,
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextField(
              controller: passwordController,
              obscureText: !_passwordVisible,
              obscuringCharacter: "*",
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 40),
                fillColor: Colors.black12,
                filled: true,
                hintText: 'Password',
                suffixIcon: IconButton(
                  color: Colors.black38,
                  icon: Icon(
                    _passwordVisible
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Color(0xFF20266e),
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                  iconSize: 30,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                if (emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty &&
                    nameController.text.isNotEmpty) {
                  String? msg =
                      ValidatorEmail.validateEmailAddress(emailController.text);
                  String? pass = ValidatorPassword.validatePassword(
                      passwordController.text);

                  if (nameController.text.length >= 3) {
                    if (msg == null) {
                      if (pass == null) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpDetails(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: passwordController.text,
                                )));
                      } else {
                        var snackBar = SnackBar(content: Text(pass));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    } else {
                      var snackBar = SnackBar(content: Text(msg));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
                  } else {
                    var snackBar = const SnackBar(
                        content:
                            Text('Name should be greater then 3 character'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                } else {
                  var snackBar =
                      const SnackBar(content: Text('Please enter all details'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 17, horizontal: 140),
                decoration: BoxDecoration(
                  color: Color(0xFF20266e),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Or',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebViewScreen(
                                  url: 'https://www.facebook.com/',
                                )));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Image.network(
                          'https://pngimg.com/uploads/facebook_logos/facebook_logos_PNG19757.png',
                          height: 42,
                          width: 42,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Facebook',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WebViewScreen(
                                  url:
                                      'https://accounts.google.com/AddSession/signinchooser?service=accountsettings&continue=https%3A%2F%2Fmyaccount.google.com%2F%3Futm_source%3Dsign_in_no_continue%26pli%3D1&ec=GAlAwAE&flowName=GlifWebSignIn&flowEntry=AddSession',
                                )));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      children: [
                        Image.network(
                          'https://pbs.twimg.com/profile_images/1455185376876826625/s1AjSxph_400x400.jpg',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Goggle',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
