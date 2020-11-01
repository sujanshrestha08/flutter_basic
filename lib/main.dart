import "package:flutter/material.dart";
import './app_screen/long_list_view.dart';

//import './app_screen/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Exploring UI Widgets",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Long List View "),
      ),
      body: getLongListView(),
    ),
  ));
}
