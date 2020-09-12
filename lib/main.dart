import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_docs/cupertino_context_menu.dart';
import 'package:flutter_cupertino_docs/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
//      theme: CupertinoThemeData(
//        primarySwatch: Colors.blue,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
//      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController text = TextEditingController(text: "initial text");
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino Test"),
      ),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            CupertinoButton(
              child: Text("Pressed Me"),
              color: Colors.teal,
              pressedOpacity: 0.8,
              onPressed: () {
                showCupertinoModalPopup(
                    context: context,
                    builder: (context) {
                      return CupertinoActionSheet(
                        title: Text("TITLE"),
                        message: Text("Content"),
                        actions: <Widget>[
                          CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text("One"),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text("Two"),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () {},
                            child: Text("Three"),
                          ),
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Cancel"),
                        ),
                      );
                    });
              },
            ),
            SizedBox(height: 10),
//          CupertinoActivityIndicator(
//            radius: 20,
//          ),
            CupertinoButton(
              onPressed: () {
                showCupertinoDialog(
                  //for popupsurface we can also use showCupertinoModalPopUp
                  context: context,
                  builder: (context) {
//                  return CupertinoAlertDialog(
//                    title: Text("Alert Dialog"),
//                    content: Text("this is the alert dialog"),
//                    actions: <Widget>[
//                      CupertinoDialogAction(
//                        onPressed: () {},
//                        child: Text("OK"),
//                        isDefaultAction: true,
//                      ),
//                      CupertinoDialogAction(
//                        onPressed: () {
//                          Navigator.pop(context);
//                        },
//                        child: Text("CANCEL"),
//                        isDestructiveAction: true,
////                          textStyle: TextStyle(
////                            color: Colors.purple,
////                          ),
//                      )
//                    ],
//                  );
                    return CupertinoPopupSurface(
                      isSurfacePainted: false,
                      child: Scaffold(
                        appBar: AppBar(
                          title: Text("Cupertino Test"),
                        ),
                        body: Center(
                          child: Column(
                            children: <Widget>[
                              Text("TITLE"),
                              Text("CONTENT"),
                              CupertinoButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text("Press Me"),
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text("show Dialog"),
              color: Colors.deepOrange,
            ),
            SizedBox(
              height: 10,
            ),
            CupertinoButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => MySecondScreen(),
                ),
              ),
              child: Text("Next Page"),
              color: Colors.pink,
            ),
            SizedBox(
              height: 10,
            ),
            CupertinoTextField(
              controller: text,
              placeholder: "enter something...",
            ),
            SizedBox(
              height: 10,
            ),
            CupertinoButton(
              onPressed: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (BuildContext context) => ContextMenu(),
                ),
              ),
              child: Text("CupertinoContextMenu Page"),
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
