import 'package:flutter/material.dart';
import 'package:githubui/utils.dart';
import 'homepage.dart';
import 'searchpage.dart';
import 'notificationpage.dart';
import 'utils.dart';

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
    Homepage(),
    Pagenotification(),
    Search(),
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
          selectedItemColor: GIconColor,
          unselectedItemColor: Colors.grey[600],
          backgroundColor: GBottomAppBarColor,
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
                  Icons.notifications_none,
                ),
                title: Text(
                  "Notifications",
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                title: Text(
                  "Search",
                ))
          ],
        ),
      ),
    );
  }
}
