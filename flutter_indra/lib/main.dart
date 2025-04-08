import 'package:flutter/material.dart';
import 'buttons/raised_button.dart';
import 'buttons/flat_button.dart';
import 'buttons/icon_button.dart';
import 'buttons/floating_action_button.dart';
import 'buttons/cupertino_button.dart';
import 'buttons/custom_gesture.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('App - Indra Yones')),
        body: SingleChildScrollView(child: Center(child: InputScreen())),
      ),
    );
  }
}

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  TextEditingController _textController = TextEditingController();
  String _displayText = '';

  void _showInputText() {
    setState(() {
      _displayText = _textController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Welcome to My App',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            shadows: [
              Shadow(
                blurRadius: 5.0,
                color: Colors.black45,
                offset: Offset(3.0, 3.0),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, size: 50, color: Colors.amber),
            Icon(Icons.favorite, size: 50, color: Colors.red),
            Icon(Icons.home, size: 50, color: Colors.blue),
            Icon(Icons.settings, size: 50, color: Colors.grey),
            Icon(Icons.person, size: 50, color: Colors.green),
          ],
        ),
        SizedBox(height: 20),
        Image.asset('assets/indra.jpg', width: 200),
        SizedBox(height: 20),
        Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
          width: 1000,
          height: 200,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Text('Gagal memuat gambar');
          },
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            controller: _textController,
            decoration: InputDecoration(
              labelText: 'Enter your name',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: _showInputText,
          child: Text('Tampilkan Teks'),
        ),
        SizedBox(height: 20),
        Text(
          _displayText,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              RaisedButtonExample(),
              SizedBox(height: 10),
              FlatButtonExample(),
              SizedBox(height: 10),
              IconButtonExample(),
              SizedBox(height: 10),
              FloatingActionButtonExample(),
              SizedBox(height: 10),
              CupertinoButtonExample(),
              SizedBox(height: 10),
              CustomGestureExample(),
            ],
          ),
        ),
      ],
    );
  }
}
