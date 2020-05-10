import 'package:flutter/material.dart';
import 'utils.dart';

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
        height: MediaQuery.of(context).size.height / 2,
        color: GBodyColor,
      ),
    );
  }
}
