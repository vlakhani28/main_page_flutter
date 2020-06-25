
import 'package:flutter/material.dart';
import 'package:mainpage/List.dart';
import 'Settings.dart';
import 'main.dart';

//List<IconDetail> _icons = [
//  IconDetail('SETTINGS', Icons.settings),
//  IconDetail('TRASH', Icons.delete),
//  IconDetail('LOGOUT', Icons.exit_to_app),
//  IconDetail('MY PROFILE', Icons.perm_identity)
//];
Widget navList(
    {IconData icon, String text, GestureTapCallback onTap})
{
  return ListTile(
    contentPadding: EdgeInsets.all(20.0),
    title: Row(
        children: <Widget>[
        Icon(icon,
          color: Colors.white,
          size: 34.0),
    Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Text(text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 25.0),
      ),
    )
  ],
    ),
);
}


/*    leading: Icon(
      _icons[].icon,
      color: Colors.white,
      size: 34.0,
    ),
    title: Text(
      _icons[index].name,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25.0,
      ),
    ),
    onTap: () {
      if(index == 0)
      {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SettingsPage(),
            ));
      }
    },
  );*/


