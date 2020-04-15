import 'package:flutter/material.dart';

class StopWatch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 95,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "00:00:00",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w500,
                fontSize: 60,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 95,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // equally divide childrens
          children: <Widget>[
            FlatButton(
              child: Text(
                "Stop",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              onPressed: () {},
              color: Colors.redAccent,
            ),
            FlatButton(
              child: Text(
                "Reset",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              onPressed: () {},
              color: Colors.cyan,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // equally divide childrens
            children: <Widget>[
              FlatButton(
                child: Text(
                  "START",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {},
                color: Colors.green,
              ),
            ])
      ],
    );
  }
}
