import 'package:flutter/material.dart';
import 'homepage.dart';
import 'profilepage.dart';
import 'searchpage.dart';
import 'notificationpage.dart';

void main() => runApp(Github());

//class Github extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      home: Mainpage(),
//    );
//  }
//}

class Github extends StatefulWidget {
  @override
  _GithubState createState() => _GithubState();
}

class _GithubState extends State<Github> {
  int _selectedpage = 0;
  final _pageoptions = [

    // CoronaVirus(),
    // Syptoms(),
    //Aboutus(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github',
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
