import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './page/index.dart';
import './page/sliver_demo.dart';
import './page/nav.dart';
import './page/formDemo.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'weather',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context) => FormDemo(),
      },
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        highlightColor: Colors.white,
        splashColor: Colors.blue,
      ),
      // home: FormDemo(),
    );
  }
}

