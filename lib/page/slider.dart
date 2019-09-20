import 'package:flutter/material.dart';

class slider extends StatefulWidget {
  @override
  _sliderState createState() => _sliderState();
}

class _sliderState extends State<slider> {
  double isCheck = 0.0;
  void _change(index){
    setState(() {
     isCheck = index; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("radioDemo"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("this is option $isCheck"),
            SizedBox(height: 50.0,),
            Slider(
              value: isCheck,
              onChanged: _change,
              max: 10.0,
              min: 0.0,
              label:'$isCheck',
              divisions: 10,
            )
          ],
        ),
      ),
    );
  }
}