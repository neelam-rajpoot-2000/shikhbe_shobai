import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  late List<FocusNode> _focus;
  late List<TextEditingController> _controllers;
  final _boxFocus1 = FocusNode();
  final _boxFocus2 = FocusNode();
  final _boxFocus3 = FocusNode();
  final _boxFocus4 = FocusNode();
  @override
  void initState() {
    super.initState();
    _controllers = [
      _boxController1,
      _boxController2,
      _boxController3,
      _boxController4,
    ];
    _focus = [
      _boxFocus1,
      _boxFocus2,
      _boxFocus3,
      _boxFocus4,
    ];
  }

  final _boxController1 = TextEditingController();
  final _boxController2 = TextEditingController();
  final _boxController3 = TextEditingController();
  final _boxController4 = TextEditingController();

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Column(
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
                    width: 50,
                  ),
                  Text(
                    "Verification",
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                child: Text(
                  'We text you 4 digit code for verify your phone number',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black38, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4,
                  (index) => Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 25,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      width: 15,
                      height: 25,
                      child: TextField(
                        controller: _controllers[index],
                        focusNode: _focus[index],
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 138),
                  decoration: const BoxDecoration(
                    color: Color(0xFF20266e),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Text(
                    'Confirm',
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
