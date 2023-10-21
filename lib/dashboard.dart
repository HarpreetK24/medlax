import 'package:flutter/material.dart';

class DoctorDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFFDB2632),
            actions: [
              IconButton(
                icon: const Icon(Icons.help),
                onPressed: () {
                },
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                },
              ),
              IconButton(
                icon: const Icon(Icons.notifications,),
                onPressed: () {
                },
              ),
            ],
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                const DrawerHeader(
                  child: Text('Doctor Drawer'),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text('Logout'),
                  onTap: () {
                    Navigator.pushNamed(context, "phone");
                  },
                ),
              ],
            ),
          ),
          body: SafeArea(
            top: true,
            child: Column(
              children: [
                const TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.red,
                  tabs: [
                    const Tab(
                      text: 'APPS',
                    ),
                    Tab(
                      text: 'Summary',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      // APPS Tab
                      Stack(
                        children: [
                          Align(
                            alignment: const Alignment(-0.84, -0.89),
                            child: Container(
                              width: 60,
                              height: 60,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://picsum.photos/seed/697/600',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Align(
                            alignment: Alignment(-0.42, -0.81),
                            child: Text(
                              'Dentist',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          const Align(
                            alignment: Alignment(-0.20, -0.87),
                            child: Text(
                              'Dr. Vishal Jindal',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFDB2632),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const Alignment(-0.89, -0.4),
                            child: Padding(
                              padding: const EdgeInsets.all(25),
                              child: Container(
                                width: 365,
                                height: 328,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFDB2632),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Stack(
                                  children: [
                                    const Align(
                                      alignment: Alignment(0.00, -0.92),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'My Balance',
                                            textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20
                                          ),
                                          ),
                                          Text(
                                            '₹ 10,350',
                                            style: TextStyle(
                                              color: Color(0xFFF4B344),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Align(
                                      alignment: const Alignment(-0.91, -0.5),
                                      child: Container(
                                        width: 80,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          color: Colors.white, // White background
                                          borderRadius: BorderRadius.circular(10), // Square shape
                                        ),
                                        child: IconButton(
                                          icon: const Icon(
                                            Icons.location_history_rounded,
                                            color: Color(0xFF8C1C2E),
                                            size: 50,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ),

                                    Align(
                                      alignment: const Alignment(-0.04, -0.45),
                                      child: Container(
                                        width: 80,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: IconButton(
                                          icon: const Icon(
                                            Icons.thumbs_up_down,
                                            color: Color(0xFF8C1C2E),
                                            size: 50,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const Alignment(-0.92, 0.62),
                                      child: Container(
                                        width: 80,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: IconButton(
                                          icon: const Icon(
                                            Icons.chat_rounded,
                                            color: Color(0xFF8C1C2E),
                                            size: 50,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const Alignment(0.84, 0.59),
                                      child: Container(
                                        width: 80,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: IconButton(
                                          icon: const Icon(
                                            Icons.edit_calendar_sharp,
                                            color: Color(0xFF8C1C2E),
                                            size: 50,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const Alignment(0.85, -0.44),
                                      child: Container(
                                        width: 80,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: IconButton(
                                          icon: const Icon(
                                            Icons.attach_money_sharp,
                                            color: Color(0xFF8C1C2E),
                                            size: 50,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const Alignment(-0.07, 0.62),
                                      child: Container(
                                        width: 80,
                                        height: 90,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: IconButton(
                                          icon: const Icon(
                                            Icons.medical_services_rounded,
                                            color: Color(0xFF8C1C2E),
                                            size: 50,
                                          ),
                                          onPressed: () {
                                            print('IconButton pressed ...');
                                          },
                                        ),
                                      ),
                                    ),

                                    const Align(
                                      alignment: Alignment(-0.79, -0.17),
                                      child: Text(
                                        'Profile',
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.84, 0.69),
                                      child: Text(
                                        'Appointments',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.06, 0.69),
                                      child: Text(
                                        'Patients',
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(0.78, -0.12),
                                      child: Text(
                                        'Earnings',
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.8, 0.67),
                                      child: Text(
                                        'Chats',
                                      ),
                                    ),
                                    const Align(
                                      alignment: Alignment(-0.06, -0.11),
                                      child: Text(
                                        'Reviews',
                                      ),
                                    ),
                              const Align(
                                alignment: Alignment(-0.8, 1.3),
                                child: Text(
                                  'Upcoming Appointments',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),

                              Align(
                                alignment: const Alignment(-0.75, 2.8),
                                child: Container(
                                  width: 400,
                                  height: 120,
                                  child: ListView.builder(
                                    itemCount: 3,
                                    itemBuilder: (context, index) {
                                      return ListTile(
                                        title: Text('Mr. Devesh Gupta\n06 Aug 2021, 10:30 AM'),
                                        subtitle: const Text('In-Clinic Appointment'),
                                        trailing: const Icon(Icons.calendar_today),
                                      );
                                    },
                                  ),
                                )
                              )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
