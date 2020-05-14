import 'package:flutter/material.dart';
import 'package:githubui/utils.dart';

class SearchList extends StatefulWidget {
  @override
  _SearchListState createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 23, 8, 10),
      child: Column(
        children: <Widget>[
          searchCard('Flutter', 17, '', 0),
          SizedBox(
            height: 23,
          ),
          searchCard('Flutter Card', 17, '', 0),
          SizedBox(
            height: 23,
          ),
          searchCard('Yunus Ali', 17, '', 0),
          SizedBox(
            height: 23,
          ),
          searchCard('Rive app', 17, '', 0),
          SizedBox(
            height: 23,
          ),
          searchCard('Xd to flutter', 17, '', 0),
        ],
      ),
    );
  }

  Widget searchCard(
      String search, double font1, String searched, double font2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          search,
          style: TextStyle(
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
