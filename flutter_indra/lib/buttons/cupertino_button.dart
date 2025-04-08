import 'package:flutter/cupertino.dart';

class CupertinoButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
        print("Cupertino Button Clicked");
      },
      child: Text("Cupertino Button"),
      color: CupertinoColors.activeBlue,
    );
  }
}
