import 'package:flutter/material.dart';

class smailDilog extends StatefulWidget {
  @override
  _smailDilogState createState() => _smailDilogState();
}

class _smailDilogState extends State<smailDilog> {
  var a;
  _show() async{
  final open = await showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          title: Text("smaildelog"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("这是第一行"),
              onPressed: (){
                Navigator.of(context).pop(1);
              },
            ),
            SimpleDialogOption(
              child: Text("这是第一行"),
              onPressed: (){
                Navigator.of(context).pop(2);
              },
            ),
            SimpleDialogOption(
              child: Text("这是第一行"),
              onPressed: (){
                Navigator.of(context).pop(3);
              },
            ),
          ],
        );
      }
    );
    print(open);
    if(open == null) return;
    setState(() {
       a =open;
    });
  }
  _shows() async{
  final b =  await showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          title: Text("data"),
          content: Text("31231321321321231"),
          actions: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.info),
              label: Text("ok"),
              onPressed: (){
                Navigator.of(context).pop(1);
              },
              
            ),
            FlatButton.icon(
              icon: Icon(Icons.info),
              label: Text("quxiao"),
              onPressed: (){
                Navigator.of(context).pop(2);
              },
            ),
          ],
        );
      }
    );
    switch (b) {
      case 1:
        print(b);
        break;
      default:
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("smailDilog"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton.icon(
            icon: Icon(Icons.send),
            label: Text("发送"),
            color: Colors.pink[100],
            onPressed: _shows,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("you choose $a"),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.menu),
        onPressed:_show,
      ),
    );
  }
}