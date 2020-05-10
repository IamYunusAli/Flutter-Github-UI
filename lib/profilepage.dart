import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'utils.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GBodyColor,
      appBar: AppBar(
        backgroundColor: GAppbarColor,
        leading: Icon(
          Icons.arrow_back,
          color: GIconColor,
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.share,
                color: GIconColor,
              ),
              onPressed: null),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: GIconColor,
            ),
            onPressed: null,
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          color: GBodyColor,
        ),
      ),
    );
  }
}
