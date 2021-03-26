import 'package:flutter/material.dart';
import '../pages/clients.dart';
import '../pages/feed.dart';
import '../pages/profile.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 1;
  List<Widget> _pages = <Widget>[
    Feed(),
    Clients(),
    Profile(),
  ];

// function to change the page with BottomNavBar
  void _onNavItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //Main Container to display different pages:
        body: Container(
          child: _pages.elementAt(_selectedIndex),
        ),
        //FAB:
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
          child: (_selectedIndex == 1)
              ? Icon(Icons.person_add)
              : (_selectedIndex == 0)
                  ? Icon(Icons.add_photo_alternate)
                  : Icon(Icons.edit),
          onPressed: () {},
        ),
        //FAB Location:
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        //BottomNavBar of home screen:
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onNavItemTap,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Feed",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: "Clients",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
