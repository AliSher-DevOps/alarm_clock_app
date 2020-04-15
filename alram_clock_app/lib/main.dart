import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/first_screen.dart';
import 'screens/stopwatch.dart';
import 'screens/stopwatch.dart';
import 'clock/clock.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Alarm Clock',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: new AppClock(),
    );
  }
}

class AppClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.0,
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: BottomBar(),
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(35),
              child: Container(
                color: Colors.transparent,
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      TabBar(
                          indicator: UnderlineTabIndicator(
                              borderSide: BorderSide(
                                width: 4.0,
                                color: Colors.cyan,
                              ),
                              insets:
                                  EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0)),
                          labelColor: Color(0xff2d386b),
                          labelStyle: TextStyle(
                              fontSize: 11.0, fontWeight: FontWeight.w700),
                          tabs: [
                            Tab(
                              text: "Clock",
                              icon: Icon(Icons.timer, size: 30),
                            ),
                            Tab(
                              text: "Alarm",
                              icon: Icon(Icons.access_alarms, size: 30),
                            ),
                            Tab(
                              text: "Stop Watch",
                              icon: Icon(Icons.watch, size: 30),
                            ),
                            Tab(
                              text: "Setting",
                              icon: Icon(Icons.settings, size: 30),
                            )
                          ])
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: FirstTab(),
              ),
              Text("Under Deve"),
              Center(
                child: StopWatch(),
              ),
              Text("Under Devep"),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          FloatingActionButton(
            child: Text(
              "+",
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontSize: 25.0),
            ),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 5,
            highlightElevation: 3,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
