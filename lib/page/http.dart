import 'package:flutter/material.dart';
import 'package:wether/mode/post.dart';
import './api/api.dart';
import '../model/list.dart';
import 'dart:convert';

class Http extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Http"),
      ),
      body: home(),
    );
  }
}
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  List  lists=[];
  @override
  void initState() { 
    super.initState();
  }
  feachs() async {
      await post('getCategory').then((res){
        print(res);
        var data = json.decode(res.toString());
          CategoryBigModel list = CategoryBigModel.fromJson(data);
          setState(() {
          lists=list.data; 
          });
          print(">>>>>>>>>>>>>${list.data[0].mallCategoryName}");
          // list.data.forEach((item)=>print(item.mallCategoryName));
      });
    }
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: feachs(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          return ListView.builder(
            itemCount: lists.length,
            itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: lists[index].mallCategoryName,
            );
           },
          );
        }else{
          return Center(
            child: Text("loading"),
          );
        }
      },
    );
    
  }

}