import 'package:covid_tracker/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropdownMenu extends StatefulWidget {
  DropdownMenu({Key key}) : super(key: key);

  @override
  _DropdownMenuState createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String dropdownValue = 'World';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      iconSize: 24,
      elevation: 16,
      underline: SizedBox(),
      icon: SvgPicture.asset("assets/icons/dropdown.svg"),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>[
        'World',
        'Australia',
        'Canada',
        'India',
        'United States of America'
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
