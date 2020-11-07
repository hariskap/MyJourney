import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Planning extends StatefulWidget {
  @override
  _PlanningState createState() => _PlanningState();
}

class _PlanningState extends State<Planning> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Awareness',
      home: PlanningPage(title: 'Alerts & Reminders'),
    );
  }
}

class PlanningPage extends StatefulWidget {
  PlanningPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PlanningPage>
    with SingleTickerProviderStateMixin {
  // TabController to control and switch tabs
  TabController _tabController;

  // Current Index of tab
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(vsync: this, length: 2, initialIndex: _currentIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 27, 153, 139),
        centerTitle: true,
        title: Text("Alerts & Reminders"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color.fromARGB(255, 25, 57, 91),
        selectedIconTheme:
            IconThemeData(color: Color.fromARGB(255, 25, 57, 91)),
        selectedLabelStyle: TextStyle(color: Colors.red),
        backgroundColor: Color.fromARGB(255, 27, 153, 139),
        items: <BottomNavigationBarItem>[
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
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border:
                        Border.all(color: Color.fromARGB(255, 27, 153, 139))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    // Sign In Button
                    Expanded(
                      child: FlatButton(
                        color: _currentIndex == 0
                            ? Color.fromARGB(255, 27, 153, 139)
                            : Colors.white,
                        onPressed: () {
                          _tabController.animateTo(0);
                          setState(() {
                            _currentIndex = 0;
                          });
                        },
                        child: Text("Medication"),
                      ),
                    ),
                    // Sign Up Button
                    Expanded(
                      child: FlatButton(
                        color: _currentIndex == 1
                            ? Color.fromARGB(255, 27, 153, 139)
                            : Colors.white,
                        onPressed: () {
                          _tabController.animateTo(1);
                          setState(() {
                            _currentIndex = 1;
                          });
                        },
                        child: Text("Reminders"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Card(
                  child: ListTile(
                leading: Icon(Icons.arrow_back_ios, color: Colors.blue),
                title: Text('Sunday 9 November 2020',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
              )),
              Card(
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.clock, color: Colors.blue),
                  title: Text('Morning'),
                  subtitle: Text("0:00 - 11:30"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: Column(
	                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
	                  Padding(
		                  padding: EdgeInsets.only(top:10,left:20,right:20,bottom:10),
	                    child: Row(
		                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
		                  crossAxisAlignment: CrossAxisAlignment.end,
		                  children: [
		                  	Row(
			                    crossAxisAlignment: CrossAxisAlignment.end,
			                    children: [
				                    Icon(FontAwesomeIcons.pills, color: Colors.blue),
				                    SizedBox(width: 10),
				                    Text('Take'),
			                    ],
		                    ),
			                  Row(
				                  children: [
					                  Text("08:00"),
					                  SizedBox(width: 10),
					                  Icon(Icons.arrow_forward_ios),
				                  ],
			                  ),
		                  ],
	                    ),
	                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                            onPressed: (null),
                            child: Row(
                              children: [
                                Icon((Icons.navigate_next), color: Colors.blue),
                                Text(
                                  "Skip",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue),
                                ),
                              ],
                            )),
                        FlatButton(
                            onPressed: (null),
                            child: Row(
                              children: [
                                Icon(Icons.done,
                                    color: Colors.blue),
                                Text(
                                  "Done",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue),
                                ),
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.clock, color: Colors.blue),
                  title: Text('Afternoon'),
                  subtitle: Text("14:00 - 17:00"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(FontAwesomeIcons.clock, color: Colors.blue),
                  title: Text('Evening'),
                  subtitle: Text("00:00 - 06:00"),
                  trailing: Icon(Icons.more_vert),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

// Milestones Diagram with 4 steps connected by line, Step 2 selected
// Step 1 - Investigations (eg, scans,imaging)
// Step 2 - Biopsy
// Step 3 - MDT
// Step 4 - Cancer Specialist Apointment
