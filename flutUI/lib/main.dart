import 'package:flutUI/screens/loginui.dart';
import 'package:flutUI/socketiochat/Routes.dart';
import 'package:flutter/material.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter UI",
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(),
      // home: HomeePage(),
      routes: Routes.routes(),
      initialRoute: Routes.initScreen(),
    );
  }
}