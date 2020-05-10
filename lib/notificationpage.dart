import 'package:flutter/cupertino.dart';
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
      body: Center(
        child: Container(
          //height: 10,
          //width: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image(image: AssetImage('assets/github.jpg')),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'All Caught Up!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Take a break , write some code and do \n                  what you do best.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
