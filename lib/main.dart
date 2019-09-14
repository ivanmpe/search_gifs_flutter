import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'ui/gif_page.dart';

void main() => runApp(
    MaterialApp(
      home: Home(),
      theme: ThemeData(hintColor: Colors.white, primaryColor: Colors.black, accentColor: Colors.white),
    )
);

