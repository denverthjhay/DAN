import 'package:flutter/material.dart';
import './loginscreen.dart';

class GetstartedscreenWidget extends StatefulWidget {
  @override
  _GetstartedscreenWidgetState createState() => _GetstartedscreenWidgetState();
}

class _GetstartedscreenWidgetState extends State<GetstartedscreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(children: <Widget>[
      Positioned(
        top: 7,
        left: 11,
        child: Container(),
      ),
      Positioned(
          top: 205,
          left: 52,
          child: Container(
              width: 270,
              height: 254,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Rectangle87.png'),
                    fit: BoxFit.fitWidth),
              ))),
      Positioned(
        top: 658,
        left: 38,
        child: TextButton(
          child: Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color.fromRGBO(6, 174, 213, 1),
              )),
          onPressed: () => {},
        ),
      ),
      Positioned(
          top: 674,
          left: 129,
          child: TextButton(
            child: Text(
              'Get Started',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 23,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => loginscreenWidget()),
              );
            },
          )),
      Positioned(
          top: 730,
          left: 96,
          child: Container(
              width: 169,
              height: 13,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Text(
                      'Already have an account? ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          fontFamily: 'DM Sans',
                          fontSize: 11,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    )),
                Positioned(
                    top: 0,
                    left: 137,
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(6, 174, 213, 1),
                          fontFamily: 'DM Sans',
                          fontSize: 11,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    )),
              ]))),
    ]));
  }
}
