import 'package:flutter/material.dart';
import 'package:githubui/profilepage.dart';
import 'utils.dart';
import 'widgets/SearchCard.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GAppbarColor,
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            maxRadius: 0.1,
            backgroundImage: AssetImage('assets/yunus.jpg'),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Profile(),
                  ),
                );
              },
            ),
          ),
        ),
        title: Text(
          'Search',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.search,
              color: GIconColor,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height / 3,
        color: GBodyColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent search',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 17),
                      ),
                      Text(
                        'CLEAR',
                        style: TextStyle(
                          color: GIconColor,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SearchList(),
                  //_buildSearchCard('fuck', 17, '', 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchCard(
      String search, double font1, String searched, double font2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          search,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: font1,
          ),
        ),
        Text(
          searched,
          style: TextStyle(
            color: GIconColor,
            fontSize: font2,
          ),
        ),
      ],
    );
  }
}
