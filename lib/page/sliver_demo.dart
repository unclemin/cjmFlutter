import 'package:flutter/material.dart';

class SliverDemo extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            // title: Text("mamaba"),
            // centerTitle: true,
            // floating: true,
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("HELLO WORD",style:TextStyle(fontWeight: FontWeight.w300,letterSpacing: 2.0),textAlign:TextAlign.center,),
              background: Image.network('https://img.zcool.cn/community/01303c5d7b679da8012060be7def76.png@1280w_1l_2o_100sh.png',
                fit: BoxFit.cover,
              ),
            ),
            // pinned: true,
          ),
          SliverSafeArea(
            sliver: SliverPadding(
              padding: EdgeInsets.all(8.0),
              sliver: _sliverListDemo(),
            ),
          )
        ],
      ),
    );
  }
}
class _sliverListDemo extends StatelessWidget {
   List list= ['https://img.zcool.cn/community/0102185ce749f5a801208f8b6d8c67.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/011a215ce749f5a801214168546aec.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0157765ce749f5a801208f8b4c5922.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0102185ce749f5a801208f8b6d8c67.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/011a215ce749f5a801214168546aec.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0157765ce749f5a801208f8b4c5922.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0102185ce749f5a801208f8b6d8c67.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/011a215ce749f5a801214168546aec.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0157765ce749f5a801208f8b4c5922.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0102185ce749f5a801208f8b6d8c67.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/011a215ce749f5a801214168546aec.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0157765ce749f5a801208f8b4c5922.png@1280w_1l_2o_100sh.png'];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context,index){
        return  Container(
          margin: EdgeInsets.only(bottom: 20.0),
          child:ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16/9,
                  child: Image.network(
                    list[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  child: Text("dsalkjd".toUpperCase(),style: TextStyle(color: Colors.white,fontSize: 20.0),),
                ),
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){},
                    ),
                  ),
                )
              ],
            ), 
          )
        );
      },
      childCount: list.length
      )
    );
  }
}
class _sliverDemo extends StatelessWidget {
   List list= ['https://img.zcool.cn/community/0102185ce749f5a801208f8b6d8c67.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/011a215ce749f5a801214168546aec.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0157765ce749f5a801208f8b4c5922.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0102185ce749f5a801208f8b6d8c67.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/011a215ce749f5a801214168546aec.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0157765ce749f5a801208f8b4c5922.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0102185ce749f5a801208f8b6d8c67.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/011a215ce749f5a801214168546aec.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0157765ce749f5a801208f8b4c5922.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0102185ce749f5a801208f8b6d8c67.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/011a215ce749f5a801214168546aec.png@1280w_1l_2o_100sh.png',
              'https://img.zcool.cn/community/0157765ce749f5a801208f8b4c5922.png@1280w_1l_2o_100sh.png'];
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate((context,index){
        return Container(
          child: Image.network(
            list[index],
            fit: BoxFit.cover,
          ),
        );
      },
      childCount: list.length
      )
    );
  }
}