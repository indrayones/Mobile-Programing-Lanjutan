import 'package:flutter/material.dart';

class GridViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView Example')),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(6, (index) {
          return Card(
            margin: EdgeInsets.all(10),
            color: Colors.orange,
            child: Center(child: Text('Item ${index + 1}')),
          );
        }),
      ),
    );
  }
}
