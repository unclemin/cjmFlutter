import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  Widget _pageItem(BuildContext context,index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            list[index],
            fit:BoxFit.cover,
          )
        ),
        Positioned(
          left: 20.0,
          bottom: 40.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("data",style:TextStyle(color:Colors.white,fontSize: 32.0),),
              Text("132123123123",style:TextStyle(color:Colors.white,fontSize: 20.0),)
            ],
          ),
        )
      ],
    );
  }
  List list= ['https://img.zcool.cn/community/0102185ce749f5a801208f8b6d8c67.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/011a215ce749f5a801214168546aec.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0157765ce749f5a801208f8b4c5922.png@1280w_1l_2o_100sh.png'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        itemCount: 3,
        itemBuilder: _pageItem,
      )
    );
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
        // scrollDirection: Axis.vertical,
        controller: PageController(
          keepPage: true,
        ),
        children: <Widget>[
          Container(
            color: Colors.brown[400],
            alignment: Alignment(0.0,0.0),
            child: Text("ONE",style: TextStyle(color: Colors.white,fontSize: 32.0),),
          ),
          Container(
            color: Colors.green[400],
            alignment: Alignment(0.0,0.0),
            child: Text("TWO",style: TextStyle(color: Colors.white,fontSize: 32.0),),
          ),
          Container(
            color: Colors.pink[400],
            alignment: Alignment(0.0,0.0),
            child: Text("THREE",style: TextStyle(color: Colors.white,fontSize: 32.0),),
          )
        ],
      );
  }
}