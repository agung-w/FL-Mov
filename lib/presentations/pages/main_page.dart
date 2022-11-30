import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:movie_app/presentations/pages/edit_profile_page.dart';
import 'package:movie_app/presentations/pages/in_theater_page.dart';
import 'package:movie_app/presentations/pages/login_page.dart';
import 'package:movie_app/presentations/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    InTheaterPage(),
    ProfilePage(),
    EditProfilePage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        // color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: GNav(
              gap: 20,
              onTabChange: (index) {
                _onItemTapped(index);
              },
              selectedIndex: _selectedIndex,
              // backgroundColor: Colors.black,
              // color: Colors.white,
              // activeColor: Colors.white,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.explore,
                  text: "Discover",
                ),
                GButton(
                  icon: Icons.person,
                  text: "Profile",
                )
              ]),
        ),
      ),
    );
  }
}
