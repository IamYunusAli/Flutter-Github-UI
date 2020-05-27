import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:githubui/utils.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RepoCard extends StatefulWidget {
  @override
  _RepoCardState createState() => _RepoCardState();
}

class _RepoCardState extends State<RepoCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          repoCard(
            'Bank-Profile',
            'A flutter Ui profile for bank account',
            'Dart',
            '23',
            Colors.teal,
          ),
          repoCard(
            'Maed-Profile',
            'A Flutter Profile of UI',
            'Dart',
            '8',
            Colors.teal,
          ),
          repoCard(
            'awesome-login',
            'A flutter app Login UI',
            'Dart',
            '6',
            Colors.teal,
          ),
          repoCard(
            'astu-nav',
            'a School project using Flutter framework and google maps api',
            'Dart',
            '4',
            Colors.teal,
          ),
        ],
      ),
    );
  }

  Widget repoCard(
    String repoName,
    String desc,
    String lang,
    String star,
    Color colors,
  ) {
    return Container(
      margin: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height / 4 - 50,
      width: MediaQuery.of(context).size.width - 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: GButtonColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('assets/yunus.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'IamYunusAli',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              repoName,
              style: TextStyle(
                color: GTextColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Text(
                desc,
                style: TextStyle(
                  color: GTextColor,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.fiber_manual_record,
                      color: colors,
                      size: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      lang,
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 16,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      star,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
