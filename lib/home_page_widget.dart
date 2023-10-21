import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0, -1.7),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0),
                child: Image.asset(
                  'assets/images/doc.png',
                  width: 437,
                  height: 565,
                  fit: BoxFit.cover,
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
              alignment: const AlignmentDirectional(0, 0.75),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const HomePageWidget())
                  );
                },

                child: const Text('GETTING STARTED',
                  style: TextStyle(
                  color: Colors.black,
                ),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF4B344),

                  minimumSize: const Size(300, 60),
                  padding: const EdgeInsets.all(20),
                ),
              ),
            ),
            const Align(
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

            const Align(
              alignment: AlignmentDirectional(0.07, 0.43),
              child: Text(
                'Patients are looking for doctors \nlike you',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.77, -0.979),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/capsule.png',
                  width: 124,
                  height: 111,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.70, -0.87),
              child: Text(
                'MED',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            ),
            const Align(
              alignment: AlignmentDirectional(-0.44, -0.87),
              child: Text(
                'LAX',
                style: TextStyle(
                  color: Color(0xFFDB2632)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
