import 'package:flutter/material.dart';
import 'constant.dart';

class Counter extends StatefulWidget {
  Counter({this.number, this.color});

  final int number;
  final Color color;

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          height: 25.0,
          width: 25.0,
          decoration: BoxDecoration(
              color: kInfectedColor.withOpacity(.26), shape: BoxShape.circle),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: widget.color,
                width: 5,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: Text(
            '${widget.number}',
            style: TextStyle(
              fontSize: 20,
              color: widget.color,
            ),
          ),
        ),
      ],
    );
  }
}
