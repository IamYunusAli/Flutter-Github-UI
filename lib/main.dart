import 'package:flutter/material.dart';

void main() => runApp(Github());

class Github extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mainpage(),
    );
  }
}

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedpage = 0;
  final _pageoptions = [
    // CoronaVirus(),
    // Syptoms(),
    //Aboutus(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corona Tracker',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _pageoptions[_selectedpage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedpage,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.black,
          onTap: (int index) {
            setState(() {
              _selectedpage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text(
                  "Home",
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.accessibility,
                ),
                title: Text(
                  "Symptoms",
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.error_outline,
                ),
                title: Text(
                  "Aboutus",
                ))
          ],
        ),
      ),
    );
  }
}
