import 'package:flutter/material.dart';
import 'package:medlax/login_page.dart';
import 'package:medlax/user_details.dart';
import 'home_page_widget.dart';
import 'otp_login.dart';

void main() async{
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App Name',
      debugShowCheckedModeBanner: false,
      routes: {
        'phone': (context) => LoginPageWidget(),
        'otp': (context) => MyVerify(),
        'registration': (context) => UserDetailsPage()
      },
      home: HomeWidget(),
    );
  }
}
