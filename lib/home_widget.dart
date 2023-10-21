import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medlax/login_page.dart';
class HomePageWidget extends StatelessWidget {
  const HomePageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, -1.5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  'assets/images/doctors.png',
                  width: 437,
                  height: 565,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 1.20),
              child: Container(
                width: 410,
                height: 408,
                decoration: BoxDecoration(
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
              alignment: AlignmentDirectional(0.8, 0.77),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>  LoginPageWidget())
                  );
                },
                child: Text('REGISTER',style: TextStyle(
                  color: Color(0xFFF4B344),
                ),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF12181E),
                  textStyle: TextStyle(
                    color: Color(0xFFF4B344),
                  ),
                    minimumSize: const Size(170, 0),
                    padding: const EdgeInsets.all(20)
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.00, 0.92),
              child: Text(
                'Find a Doctor?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.03, 0.22),
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'MED',
                      style: GoogleFonts.raleway(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: 'LAX',
                      style: GoogleFonts.raleway(
                        fontSize: 35,
                        color: const Color(0xFFDB2632),
                        fontWeight: FontWeight.w400,
                        letterSpacing: 2.0,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.07, 0.43),
              child: Text(
                'Manage your practice \non the go',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.8, 0.77),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const LoginPageWidget())
                  );
                },
                child: Text('LOGIN',style: TextStyle(
                  color: Color(0xFF12181E),
                ),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFF4B344),

                  minimumSize: const Size(170, 0),
                  padding: const EdgeInsets.all(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
