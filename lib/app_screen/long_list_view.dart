import "package:flutter/material.dart";

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
        label: "UNDO",
        onPressed: () {
          debugPrint('Performing dummy UNDO operation');
        }),
  );
  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getListElements() {
  var items = List<String>.generate(250, (counter) => "Item $counter");
  return items;
}

Widget getLongListView() {
  var listItems = getListElements();
  var listView = ListView.builder(itemBuilder: (context, index) {
    var listTile = ListTile(
        leading: Icon(Icons.arrow_forward_ios),
        title: Text(listItems[index]),
        onTap: () {
          showSnackBar(context, listItems[index]);
        });
    return listTile;
  });

  return listView;
}
