import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final List<String> items = [
    'Flutter',
    'Dart',
    'React',
    'Node.js',
    'Python',
    'Java',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('List Page')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.code),
            title: Text(items[index]),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Kamu memilih ${items[index]}')),
              );
            },
          );
        },
      ),
    );
  }
}