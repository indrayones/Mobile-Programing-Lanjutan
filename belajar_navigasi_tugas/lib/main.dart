import 'package:flutter/material.dart';
import 'home_page.dart';
import 'form_page.dart';
import 'list_page.dart';
import 'tab_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Jobsheet App',
    home: HomePage(),
  ));
}