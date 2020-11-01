import "package:flutter/material.dart";

Widget getListView() {
  var listView = ListView(
    children: [
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful View !"),
        trailing: Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape tapped");
        },
      ),
      ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Google"),
      ),
      ListTile(
        leading: Icon(Icons.phone_iphone),
        title: Text("IOS"),
      ),
      Text("Can even add other elements in list"),
      Container(color: Colors.amberAccent, height: 60.0)
    ],
  );

  return listView;
}
