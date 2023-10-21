import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  final FocusNode _focusNode = FocusNode();
  bool isKeyboardVisible = false;
  TextEditingController countryController = TextEditingController();
  var phone="";

  @override
  void initState() {
    countryController.text = "+91";
    super.initState();
    _focusNode.addListener(() {
      setState(() {
        isKeyboardVisible = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.00, -1.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  'assets/images/login.png',
                  width: 437,
                  height: 565,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.00, 1.20),
              child: Container(
                width: 410,
                height: 408,
                decoration: const BoxDecoration(
                  color: Color(0xFF920003),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
              ),
            ),

            Align(
              alignment: AlignmentDirectional(0, isKeyboardVisible ? 0.27 : 0.3),
            child : Container(
              width: 350,
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: countryController,
                      style: const TextStyle(color: Colors.black),
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ), inputFormatters: [
                      LengthLimitingTextInputFormatter(3),
                    ],
                    ),
                  ),
                  const Text(
                    "|",
                    style: TextStyle(fontSize: 33, color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                        onChanged: (value){
                          phone = value;
                        },
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone",

                        ),inputFormatters: [
                        LengthLimitingTextInputFormatter(10),
                      ],
                      ))
                ],
              ),
            ),
            ),
            const Align(
              alignment: AlignmentDirectional(0.07, 0.5),
              child: Text.rich(
                TextSpan(
                  text: 'By continuing, you agree to our\n',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Terms & Conditions',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                          decorationColor: Colors.white
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                          decorationColor: Colors.white
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),

            Align(
              alignment: const AlignmentDirectional(0, 0.9),
              child: ElevatedButton(
                onPressed: () {
                  String enteredPhoneNumber = countryController.text + phone;

                  if (enteredPhoneNumber == "+919008962224") {
                    Navigator.pushNamed(context, "otp");
                  } else {
                    Navigator.pushNamed(context, "registration");
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF4B344),
                  minimumSize: const Size(350, 0),
                  padding: const EdgeInsets.all(20),
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Color(0xFF12181E),
                  ),
                ),
              ),
            ),

            Align(
              alignment: const AlignmentDirectional(0, 0.12),
              child: Container(
                width: 150,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFF12181E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Color(0xFFF4B344),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


