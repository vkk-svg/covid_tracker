import 'package:flutter/material.dart';
import 'constant.dart';
import 'counter.dart';
import 'package:intl/intl.dart';
import 'networking.dart';

NetworkHelper networkHelper = NetworkHelper();
var covidData;
int worldActive;
int worldDeaths;
int worldRecovered;

DateTime now = DateTime.now();
String formattedDate = DateFormat('EEE d MMM').format(now);

class CounterHeading extends StatefulWidget {
  // const CounterHeading({
  //   Key key,
  // }) : super(key: key);

  @override
  _CounterHeadingState createState() => _CounterHeadingState();
}

class _CounterHeadingState extends State<CounterHeading> {
  @override
  void initState() {
    super.initState();
    data();
    // covidData = networkHelper.getData();
    print(covidData);
    print(worldActive);
  }

  Future<dynamic> data() async {
    // covidData = await networkHelper.getData();
    covidData = await networkHelper.getData();
    worldActive = await covidData["Global"]["TotalConfirmed"];
    worldDeaths = await covidData["Global"]["TotalDeaths"];
    worldRecovered = await covidData["Global"]["TotalRecovered"];
    print('fhtfhf$worldActive'); //PRINTS CURRENT LIVE DATA
    // active = await covidData["Global"]["TotalConfirmed"];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Case Updates\n', style: kTitleTextstyle),
                    TextSpan(
                      text: 'Last updated $formattedDate',
                      style: kDateTextStyle,
                    ),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.refresh),
                color: Colors.blueGrey,
                onPressed: () {
                  setState(() {
                    data();
                  });
                },
                iconSize: 23.0,
              ),
              GestureDetector(
                child: Text(
                  'Refresh',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 17.0),
                ),
                onTap: () {
                  setState(() {
                    data();
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 30.0,
                  color: kShadowColor,
                ),
              ],
            ),
            child: GestureDetector(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // IconButton(
                  //   icon: Icon(Icons.refresh),
                  //   color: Colors.black,
                  //   onPressed: () {
                  //     setState(() {
                  //       data();
                  //     });
                  //   },
                  //   iconSize: 20.0,
                  // ),
                  // RaisedButton(
                  //   onPressed: () {
                  //     setState(() {
                  //       data();
                  //     });
                  //   },
                  //   child: Text('$worldActive'),
                  // ),
                  //555555555555555555555555555555555555555555555555555555555555555555
                  Counter(
                    number: worldActive,
                    color: kInfectedColor,
                  ),
                  Counter(
                    number: worldDeaths,
                    color: kDeathColor,
                  ),
                  Counter(
                    number: worldRecovered,
                    color: kRecovercolor,
                  ),
                  //5555555555555555555555555555555555555555555555555555555555555555555
                ],
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
