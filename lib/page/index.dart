import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_easyrefresh/delivery_header.dart';
import './tabbar.dart';
import './basecDemo.dart';
import './secondDemo.dart';
import './ViewDemo.dart';
import './sliver_demo.dart';



class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 因为本路由没有使用Scaffold，为了让子级Widget(如Text)使用
    // Material Design 默认的样式风格,我们使用Material作为本路由的根。
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("demo"),
          centerTitle: true,
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed:null,
          // ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed:(){},
            ),
          ],
          bottom: TabBar(
            // isScrollable: true,
            unselectedLabelColor: Colors.black12,
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_activity),),
              Tab(icon: Icon(Icons.dashboard),),
              Tab(icon: Icon(Icons.ac_unit),),
              Tab(icon: Icon(Icons.format_align_justify),),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            // Icon(Icons.dashboard,size: 280,color: Colors.black12,),
            SliverDemo(),
            BaseDemo(),
            SecondDemo(),
            ViewDemo()
          ],
        ),
        drawer:Container(
          color: Colors.white,
          width: 300,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              // DrawerHeader(
              //   child: Text("data".toUpperCase()),
              //   decoration: BoxDecoration(
              //     color: Colors.black12
              //   ),
              // ),
              UserAccountsDrawerHeader(
                accountName: Text("data"),
                accountEmail: Text("131332121@qqq.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:NetworkImage('https://avatars2.githubusercontent.com/u/48022520?s=40&v=4'),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:NetworkImage('https://img.zcool.cn/community/019e585d7e0a15a801211d5302a7b9.jpg@1280w_1l_2o_100sh.jpg'), 
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.yellow[200].withOpacity(1), BlendMode.saturation)
                  )
                ),
              ),
              ListTile(
                title: Text("mamber",textAlign: TextAlign.end,),
                leading: Icon(Icons.local_cafe,color: Colors.black26,),
                onTap: ()=>Navigator.pop(context),
              ),
              ListTile(
                title: Text("mamber",textAlign: TextAlign.end,),
                leading: Icon(Icons.local_cafe,color: Colors.black26,),
              ),
              ListTile(
                title: Text("mamber",textAlign: TextAlign.end,),
                leading: Icon(Icons.local_cafe,color: Colors.black26,),
              )
            ],
          ) ,
        ),
        bottomNavigationBar: Tabbar()
      ),
    );
  }
}