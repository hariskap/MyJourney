import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyJourney extends StatefulWidget {
  @override
  _MyJourneyState createState() => _MyJourneyState();
}

class _MyJourneyState extends State<MyJourney> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awareness',
      home: MyJourneypage(title: 'Journey Map Outline'),
    );
  }
}

class MyJourneypage extends StatefulWidget {
  MyJourneypage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyJourneypage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 27, 153, 139),
        centerTitle: true,
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 25, 57, 91),
        selectedIconTheme:
            IconThemeData(color: Color.fromARGB(255, 25, 57, 91)),
        selectedLabelStyle: TextStyle(color: Colors.red),
        backgroundColor: Color.fromARGB(255, 27, 153, 139),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert_rounded),
            label: 'Diagnosis',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add_outlined),
            label: 'Treatment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Past treatment',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      body: Stack(
        children: [
          Padding(
              padding: EdgeInsets.only(left: 20, bottom: 40),
              child: Center(
                  child: Container(
                width: 600,
                height: 20,
                color: Color.fromARGB(255, 25, 57, 91),
              ))),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 5.0,
                      fillColor: Colors.grey,
                      child: Icon(
                        FontAwesomeIcons.search,
                        size: 35.0,
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    ),
                    SizedBox(height: 25),
                    Text("Investigations",style: TextStyle( color: Colors.grey,
                      decoration: TextDecoration.none)),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 5.0,
                      fillColor: Color.fromARGB(255, 27, 153, 139),
                      child: Icon(
                        FontAwesomeIcons.bookMedical,
                        size: 35.0,
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(
                          side: BorderSide(
                              width:2.0,color: Colors.red)
                      ),
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        Text("Tumor",style: TextStyle(color: Colors.black)),
                        Text("Biopsy",style: TextStyle(color: Colors.black)),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 5.0,
                      fillColor: Colors.grey[400],
                      child: Icon(
                        FontAwesomeIcons.book,
                        size: 35.0,
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    ),
                    SizedBox(height: 5),
                    Column(
                      children: [
                        Text("Multi -"),
                        Text("Disciplinary"),
                        Text("Team"),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 5.0,
                      fillColor: Colors.grey[400],
                      child: Icon(
                        FontAwesomeIcons.phone,
                        size: 35.0,
                      ),
                      padding: EdgeInsets.all(15.0),
                      shape: CircleBorder(),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: [
                        Text("Specialist"),
                        Text("Appointment"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Milestones Diagram with 4 steps connected by line, Step 2 selected
// Step 1 - Investigations (eg, scans,imaging)
// Step 2 - Biopsy
// Step 3 - MDT
// Step 4 - Cancer Specialist Apointment
