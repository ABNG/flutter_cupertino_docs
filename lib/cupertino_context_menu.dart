import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContextMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CupertinoContextMenu"),
      ),
      body: Center(
        child: Container(
          width: 150,
          height: 150,
          child: CupertinoContextMenu(
            //if you want more customization use https://pub.dev/packages/focused_menu this package.
//            child: Container(
//              width: 200,
//              height: 200,
            child: Image.network(
              "https://cdn.pixabay.com/photo/2018/02/16/22/08/bird-3158784_960_720.jpg",
              fit: BoxFit.cover,
            ),
            //           ),
            actions: <Widget>[
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("action 1"),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("action 2"),
              ),
              CupertinoContextMenuAction(
                trailingIcon: Icons.star,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("action 3"),
                isDestructiveAction: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
