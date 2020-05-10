import 'package:flutter/material.dart';
import 'utils.dart';

class Pagenotification extends StatefulWidget {
  @override
  _PagenotificationState createState() => _PagenotificationState();
}

class _PagenotificationState extends State<Pagenotification> {
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
          'Inbox',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.filter_list,
              color: GIconColor,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height / 2,
      ),
    );
  }
}
