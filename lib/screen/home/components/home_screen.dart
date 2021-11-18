import 'package:flutter/material.dart';
import 'package:planterapiawordpress/components/bottom_nav_bar.dart';
import 'package:planterapiawordpress/constants.dart';
import 'package:planterapiawordpress/screen/details/components/body.dart';
import 'package:planterapiawordpress/screen/home/components/body.dart';
import 'package:planterapiawordpress/screen/home/components/sidebar.dart';

class TerapiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Plan Terapia",
      home: HomeScreen()
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentindex = 0;

  final tabs = [
    Container(child: Body()),
    Center(child: BodyDetails()),
    Center(child: null),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Plan Terapia'),
      ),
      drawer: DrawerSidebar(),
      body: tabs[_currentindex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: kPrimaryColor.withOpacity(0.33),
            )
          ],
        ),
        child: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            currentIndex: _currentindex,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            iconSize: 30,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.free_breakfast),
                title: Text("Aktualności"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                title: Text("Inne"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.landscape),
                title: Text("Wkrótce"),
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentindex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
