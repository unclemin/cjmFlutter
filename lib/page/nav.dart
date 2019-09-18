import 'package:flutter/material.dart';

class Nav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              child: Text("home"),
              onPressed: null,
            ),
            FlatButton(
              child: Text("about"),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=> Pag(title : "ABout"),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class Pag extends StatelessWidget {
  final String title;
  Pag({this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(title)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: ()=>Navigator.pop(context),
      ),
    );
  }
}