import 'package:flutter/material.dart';
import 'package:githubui/utils.dart';
import 'package:flutter_icons/flutter_icons.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        personalCard(
          Feather.users,
          'Maed Technologies',
          14.0,
        ),
        SizedBox(
          height: 15,
        ),
        personalCard(
          Feather.map_pin,
          'Addis Ababa, Ethiopia',
          14.0,
        ),
        SizedBox(
          height: 15,
        ),
        personalCard(
          Feather.link,
          'Yunus.dev',
          14,
        ),
        SizedBox(
          height: 15,
        ),
        personalCard(
          Feather.user,
          '20 followers, 4 follwing ',
          14,
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  Widget personalCard(
    IconData icons,
    String description,
    double iconSize,
  ) {
    return Row(
      children: [
        Icon(
          icons,
          color: Colors.grey,
          size: iconSize,
        ),
        SizedBox(
          width: 6,
        ),
        Text(
          description,
          style: TextStyle(color: GTextColor, fontSize: 18),
        ),
      ],
    );
  }
}
