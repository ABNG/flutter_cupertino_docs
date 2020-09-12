import 'package:flutter/cupertino.dart';

class MySecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text("SETTINGS"),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Text("HELLO"),
            ),
          ),
        ],
      ),
    );
  }
}
