import 'package:flutter/material.dart';

class IconButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite),
      onPressed: () {
        print("Icon Button Clicked");
      },
    );
  }
}
