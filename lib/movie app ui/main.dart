import 'package:flutter/material.dart';
import 'package:movieapp_ui/movie%20app%20ui/page/home_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'UI Movie App';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.deepOrange),
    home: HomePage(),
  );
}