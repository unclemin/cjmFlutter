import 'package:flutter/material.dart';
import '../page/index.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
        centerTitle: true,
      ),
      body: Theme(
        data: ThemeData(
          primaryColor: Colors.black
        ),
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              FromD()
            ],
          ),
        ),
      ),
    );
  }
}

class FromD extends StatefulWidget {
  @override
  _FromDState createState() => _FromDState();
}

class _FromDState extends State<FromD> {
  final reginsterKey = GlobalKey<FormState>();
  String username , pwd ;
  bool isautovalidate = false;
  void saves(){
    if (reginsterKey.currentState.validate()) {
      reginsterKey.currentState.save();
      debugPrint('username:$username,username:$username');

      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (BuildContext context) => IndexPage()),
        (route) => route == null,
      );
    } else {
      setState(() {
       isautovalidate=true; 
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: reginsterKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              labelText: "UserName",
              icon: Icon(Icons.near_me),
              helperText: ''
            ),
            onSaved: (val){
              username=val;
            },
            validator: (v){
              return v.trim().length > 0 ? null : '您的账号为空';
            },
            autovalidate: isautovalidate,
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "PassWord",
              icon: Icon(Icons.panorama_wide_angle),
              helperText: ''
            ),
            onSaved: (val){
              pwd = val ;
            },
            validator: (v){
              return v.trim().length > 0 ? null : '您的密码为空';
            },
            autovalidate: isautovalidate,
          ),
          SizedBox(height: 40.0,),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.pink,
              child: Text("Regster",style: TextStyle(color: Colors.white),),
              elevation: 0.0,
              onPressed: saves,
            ),
          )
        ],
      ),
    );
  }
}

class Tdemo extends StatefulWidget {
  @override
  _TdemoState createState() => _TdemoState();
}

class _TdemoState extends State<Tdemo> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (val){},
      onSubmitted: (val){},
      decoration: InputDecoration(
        icon: Icon(Icons.title),
        labelText: "title",
        labelStyle:TextStyle(fontSize: 28.0),
        hintText: "enter you name",
        hintStyle: TextStyle(fontSize: 20.0),
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.pink[100]
      ),
    );
  }
}