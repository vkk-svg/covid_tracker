import 'package:covid_tracker/constant.dart';
import 'package:flutter/material.dart';
import 'home_page_top.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dropdown_menu.dart';
import 'counter_heading.dart';

//kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
class HomeScreen extends StatefulWidget {
  HomeScreen({this.resultingData});

  final resultingData;
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
//kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          HomePageTop(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFE5E5E5),
              ),
            ),
            child: Row(
              children: <Widget>[
                SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: DropdownMenu(),
                )
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          CounterHeading(),
          SizedBox(
            height: 15.0,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFE5E5E5),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 17, vertical: 7),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Spread of Virus',
                  style: kTitleTextstyle,
                ),
                SizedBox(
                  width: 18.0,
                ),
                Text(
                  'See Details',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFFE5E5E5),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 6.3),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  'Testing Centers',
                  style: kTitleTextstyle,
                ),
                SizedBox(
                  width: 18.0,
                ),
                Text(
                  'See Details',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
