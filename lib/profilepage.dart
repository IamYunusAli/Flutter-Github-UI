import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'utils.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'widgets/Personalinfo.dart';
import 'widgets/repocard.dart';

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
          color: GTextColor,
        ),
        actions: [
          IconButton(
              icon: Icon(
                Feather.share_2,
                color: GIconColor,
                size: 22,
              ),
              onPressed: null),
          IconButton(
            icon: Icon(
              Feather.settings,
              color: GIconColor,
              size: 24,
            ),
            onPressed: null,
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2 - 50,
            color: GBodyColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage('assets/yunus.jpg'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Yunus Ali',
                            style: TextStyle(
                              color: GTextColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 27,
                            ),
                          ),
                          Text(
                            'IamYunusAli',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: GButtonColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "😊 Learning",
                            style: TextStyle(
                              color: GTextColor,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Student ',
                    style: TextStyle(
                      color: GTextColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  PersonalInfo(),
                ],
              ),
            ),
          ),
          Container(
            height: 15,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, right: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Feather.star,
                      color: Colors.grey,
                      size: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Popular',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: GTextColor,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                RepoCard(),
                SizedBox(
                  height: 2,
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Repositories',
                        style: TextStyle(
                          color: GTextColor,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '33',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Organizations',
                        style: TextStyle(
                          color: GTextColor,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '3',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Starred',
                        style: TextStyle(
                          color: GTextColor,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '17',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Following',
                        style: TextStyle(
                          color: GTextColor,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '4',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Followers',
                        style: TextStyle(
                          color: GTextColor,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '20',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
