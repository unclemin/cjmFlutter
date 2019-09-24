import 'package:flutter/material.dart';

class Snack extends StatefulWidget {
  @override
  _SnackState createState() => _SnackState();
}

class _SnackState extends State<Snack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: snack(),
        ),
    );
  }
}
class snack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("data"),
      onPressed: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text("data"),
            action: SnackBarAction(
              label: 'ok',
              onPressed: (){},
            ),
          )
        );
      },
    );
  }
}
