import 'package:flutter/material.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Details',style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFDB2632),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'We need some more details before we can get you started',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'City'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Speciality'),
            ),
            const SizedBox(height: 20),
            const Text('Gender'),
            Row(
              children: [
                Radio(
                  value: 'Male',
                  groupValue: 'gender',
                  onChanged: (value) {
                  },
                ),
                const Text('Male'),
                Radio(
                  value: 'Female',
                  groupValue: 'gender',
                  onChanged: (value) {
                  },
                ),
                const Text('Female'),
              ],
            ),
            const SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(labelText: 'Educational Qualification'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Registration Details'),
            ),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Years of Experience'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: const AlignmentDirectional(0, -0.5),
                child: ElevatedButton(
                  onPressed: () {
                   Navigator.pushNamed(context, "otp");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF4B344),
                    minimumSize: const Size(350, 0),
                    padding: const EdgeInsets.all(18),
                  ),
                  child: const Text(
                    'Save Account Details',
                    style: TextStyle(
                      color: Color(0xFF12181E),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            )

          ],
        ),
      ),
    ),);
  }
}
