import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mainpage/Routes.dart';
import 'package:mainpage/Settings.dart';
import 'ListTile.dart';
import 'global_variables.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String displayText;
  String font = 'LakkiReddy';
  Widget boxes(displayText) {
    return FlatButton(
      padding: EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Hexcolor('#FEEFEF'),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6,
              offset: Offset(2, 3), // changes position of shadow
            ),
          ],
        ),
        height: 165,
        width: 165,
        child: Center(
          child: Text(
            displayText,
            style: TextStyle(
              fontFamily: FontVariables.fontFamily,
              color: Colors.black,
              fontSize: FontVariables.fontSize,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/second': (context) => SettingsPane(),
    },
      home: Scaffold(
        backgroundColor: Hexcolor('#FFFFFF'),
        appBar: AppBar(
          title: Center(
            child: Text(
              'App Name',
              style: TextStyle(fontFamily: font, color: Colors.white),
              //textAlign: TextAlign.center,
            ),
          ),
          backgroundColor: Hexcolor('#0D5EDE'),
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.zero,
            color: Hexcolor('#0D5EDE'),
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  padding: EdgeInsets.fromLTRB(15.0, 45.0, 0.0, 0.0),
                  child: Text(
                    'SCRUM BOARD',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,
                    ),
                  ),
                ),
                navList(icon: Icons.settings,text: 'SETTINGS',
                    onTap: () =>
                        Navigator.pushNamed(context, '/second')
                        ),
//                navList(icon: Icons.delete,text: 'TRASH',),
//                navList(icon: Icons.exit_to_app,text: 'LOGOUT'),
//                navList(icon: Icons.perm_identity,text: 'MY PROFILE',),
              ],
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    boxes('Features'),
                    boxes('Emergency'),
                    boxes('Testing'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    boxes('Ice Box'),
                    boxes('In Progress'),
                    boxes('Complete'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
