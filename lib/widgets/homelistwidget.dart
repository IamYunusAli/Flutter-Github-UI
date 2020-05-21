import 'package:flutter/material.dart';
import 'package:githubui/utils.dart';

class HomeList extends StatefulWidget {
  @override
  _HomeListState createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Work',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
        homeCard(CIconColor1, Icons.error_outline, 'Issues'),
        SizedBox(
          height: 10,
        ),
        homeCard(CIconColor2, Icons.error_outline, 'Pull Requests'),
        SizedBox(
          height: 10,
        ),
        homeCard(CIconColor3, Icons.error_outline, 'Repositories'),
        SizedBox(
          height: 10,
        ),
        homeCard(CIconColor4, Icons.error_outline, 'Organizations'),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget homeCard(
    Color colors,
    IconData icons,
    String title,
  ) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: colors,
              borderRadius: BorderRadius.circular(6),
            ),
            height: 40,
            width: 40,
            child: Center(
              child: IconButton(
                icon: Icon(
                  icons,
                  size: 25,
                  color: CIconTextColor,
                ),
                onPressed: null,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(
              color: CIconTextColor,
              fontSize: 19,
            ),
          )
        ],
      ),
    );
  }
}
