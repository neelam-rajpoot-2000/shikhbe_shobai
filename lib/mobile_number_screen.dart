import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'verification_screen.dart';

class MobileNumber extends StatefulWidget {
  const MobileNumber({Key? key}) : super(key: key);

  @override
  State<MobileNumber> createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 28.0,
                    ),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Text(
                    "Let's Get Started",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Text(
                  'Enter Your Mobile Number and enable 2 step verification',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black38, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                    border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    new CountryCodePicker(
                      onChanged: print,
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: 'IT',
                      favorite: ['+880', 'BD'],
                      showFlag: false,
                      // optional. Shows only country name and flag
                      showCountryOnly: false,

                    ),
                    // VerticalDivider(
                    //   indent: 2,
                    //   endIndent: 2,
                    //   color: Colors.black,
                    //   thickness: 2,
                    // ),

                    Container(
                      padding:  EdgeInsets.symmetric(vertical: 20,horizontal: 1),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        maxLength: 10,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 17),
                          hintText: 'Mobile Number',
                          border: InputBorder.none,
                          counterText: "",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return VerificationScreen();
                  }));
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 138),
                  decoration: const BoxDecoration(
                    color: Color(0xFF20266e),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
