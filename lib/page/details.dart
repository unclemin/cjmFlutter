import 'package:flutter/material.dart';

class Details extends StatelessWidget {

  final String title;
  Details ({
    this.title
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
    );
  }
}