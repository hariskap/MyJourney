import 'package:flutter/material.dart';

class Diagnosis extends StatelessWidget {
	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'Awareness',
			home: MyHomePage(title: 'Diagnosis & Pre-treatment'),
		);
	}
}

class MyHomePage extends StatefulWidget {
	MyHomePage({Key key, this.title}) : super(key: key);

	final String title;

	@override
	_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

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
				selectedIconTheme: IconThemeData(color: Color.fromARGB(255, 25, 57, 91)),
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
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Padding(
							padding: EdgeInsets.symmetric(horizontal: 70),
							child: RaisedButton(
								color: Color.fromARGB(255, 25, 57, 91),
								textColor: Colors.white,
								disabledColor: Colors.grey,
								disabledTextColor: Colors.black,
								padding: EdgeInsets.all(8.0),
								splashColor: Colors.blueAccent,
								onPressed: () {
								},
								child: Row(
									children: [
										Icon(Icons.note_sharp),
										Padding(
											padding: EdgeInsets.only(left:10),
											child: Text(
												"My Journey",
												style: TextStyle(fontSize: 20.0),
											),
										),
									],
								),
							),
						),
						SizedBox(height: 20),
						Padding(
							padding: EdgeInsets.symmetric(horizontal: 70),
							child: RaisedButton(
								color: Color.fromARGB(255, 25, 57, 91),
								textColor: Colors.white,
								disabledColor: Colors.grey,
								disabledTextColor: Colors.black,
								padding: EdgeInsets.all(8.0),
								splashColor: Colors.blueAccent,
								onPressed: () {
								},
								child: Row(
									children: [
										Icon(Icons.phone),
										Padding(
											padding: EdgeInsets.only(left:10),
											child: Text(
												"Call Center",
												style: TextStyle(fontSize: 20.0),
											),
										),
									],
								),
							),
						),
						SizedBox(height: 20),
						Padding(
							padding: EdgeInsets.symmetric(horizontal: 70),
							child: RaisedButton(
								color: Color.fromARGB(255, 25, 57, 91),
								textColor: Colors.white,
								disabledColor: Colors.grey,
								disabledTextColor: Colors.black,
								padding: EdgeInsets.all(8.0),
								splashColor: Colors.blueAccent,
								onPressed: () {
								},
								child: Row(
									children: [
										Icon(Icons.timelapse),
										Padding(
											padding: EdgeInsets.only(left:10),
											child: Text(
												"Enrollment",
												style: TextStyle(fontSize: 20.0),
											),
										),
									],
								),
							),
						),
						SizedBox(height: 20),
						Padding(
						  padding: EdgeInsets.symmetric(horizontal: 70),
							child: RaisedButton(
								color: Color.fromARGB(255, 25, 57, 91),
						  	textColor: Colors.white,
						  	disabledColor: Colors.grey,
						  	disabledTextColor: Colors.black,
						  	padding: EdgeInsets.all(8.0),
						  	splashColor: Colors.blueAccent,
						  	onPressed: () {
						  	},
						  	child: Row(
						  	  children: [
						  	  	Icon(Icons.medical_services),
						  	    Padding(
						  		    padding: EdgeInsets.only(left:10),
						  	      child: Text(
						  	      	"Medical Records",
						  	      	style: TextStyle(fontSize: 20.0),
						  	      ),
						  	    ),
						  	  ],
						  	),
						  ),
						),
						SizedBox(height: 20),
						Padding(
							padding: EdgeInsets.symmetric(horizontal: 70),
							child: RaisedButton(
								color: Color.fromARGB(255, 25, 57, 91),
								textColor: Colors.white,
								disabledColor: Colors.grey,
								disabledTextColor: Colors.black,
								padding: EdgeInsets.all(8.0),
								splashColor: Colors.blueAccent,
								onPressed: () {
								},
								child: Row(
									children: [
										Icon(Icons.app_registration),
										Padding(
											padding: EdgeInsets.only(left:10),
											child: Text(
												"Consent Management",
												style: TextStyle(fontSize: 20.0),
											),
										),
									],
								),
							),
						),
					],
				),
			),
		);
	}

	int _selectedIndex = 0;
	void _onItemTapped(int index) {
		setState(() {
			_selectedIndex = index;
		});
	}
}
