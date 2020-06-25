import 'package:flutter/material.dart';
import 'package:mainpage/main.dart';

import 'List.dart';

List<settingsPage> _names = [
  settingsPage('DARK MODE/LIGHT MODE'),
  settingsPage('CHANGE FONT SIZE'),
  settingsPage('CHANGE FONT'),
];
class SettingsPane extends StatefulWidget {
  static const String routeName = '/settings';

  @override
  State<StatefulWidget> createState() {
    return _SettingsPaneState();
  }
}

class _SettingsPaneState extends State<SettingsPane> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      return Scaffold(
        appBar: AppBar(
          title: Text("Events"),
          backgroundColor: Colors.blue,
        ),
        drawer: MyApp(),
        body: Text('HEYY'),
      );
    });
  }
}

//ListTile SettingsPage() {
//  return ListTile(
//    contentPadding: EdgeInsets.all(20.0),
//    title: Text(
//      _names[0].name,
//      style: TextStyle(
//        color: Colors.white,
//        fontSize: 25.0,
//      ),
//    ),
//      onTap: () {
//      },
//  );
//}
