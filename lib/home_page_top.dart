import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'constant.dart';
import 'my_clipper.dart';

class HomePageTop extends StatelessWidget {
  const HomePageTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350.0,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/virus.png"),
          ),
        ),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset("assets/icons/menu.svg"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Stack(
                children: <Widget>[
                  SvgPicture.asset(
                    "assets/icons/Drcorona.svg",
                    width: 230,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                    top: 20,
                    left: 150,
                    child: Text(
                      'All you need is\n to stay at home',
                      style: kHeadingTextStyle.copyWith(color: Colors.white),
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
