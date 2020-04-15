import 'package:flutter/material.dart';
import 'package:alram_clock_app/clock/clock.dart';
import 'package:intl/intl.dart';
class FirstTab extends StatelessWidget {
  var now = new DateTime.now();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 35,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Clock(),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // equally divide childrens
          children: <Widget>[

           Text(new DateFormat("dd-MM-yyyy").format(now)
           ,style: TextStyle(
               fontSize: 25
                   ,
               fontWeight: FontWeight.w700,
               color: Color(0xff2d386b),
             ),),
          ],
        )
      ],
    );
  }
}
