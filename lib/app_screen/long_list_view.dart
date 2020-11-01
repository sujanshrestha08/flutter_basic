import "package:flutter/material.dart";

List<String> getListElements() {
  var items = List<String>.generate(250, (counter) => "Item $counter");
  return items;
}

Widget getLongListView() {
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      leading: Icon(Icons.arrow_forward_ios),
      title: Text(listItems[index]),
      onTap: () {
        debugPrint('${listItems[index]} was tapped');
      },
    );
  });

  return listView;
}
