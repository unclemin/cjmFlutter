import 'package:flutter/material.dart';
import './popMenu.dart';
import './index.dart';
import './checkBox.dart';
import './riadioBox.dart';
import './slider.dart';
import './dateTime.dart';
import './smailDiolg.dart';
import './formDemo.dart';
import './bootomShat.dart';
import './snackBar.dart';
import './expantion.dart';
import './chipDemo.dart';
import './datatable.dart';
import './pagedatatable.dart';
import './cardDemo.dart';
import './http.dart';

class BtnDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("13123"),
        centerTitle: true,
      ),
      floatingActionButton: _floatingActionButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
        ),
        shape:CircularNotchedRectangle(),
      ),
      body: ListView(children: <Widget>[
        Listitem(title: "pop",page:popMenu(),),
        Listitem(title: "checkBox",page:checkBox(),),
        Listitem(title: "radioBox",page:radioDemo(),),
        Listitem(title: "slider",page:slider(),),
        Listitem(title: "detaTiem",page:dateTime(),),
        Listitem(title: "smailDiolg",page:smailDilog(),),
        Listitem(title: "bottomShat",page:bottomShat(),),
        Listitem(title: "snackBar",page:Snack(),),
        Listitem(title: "expantion",page:ExpansionPanelDemo(),),
        Listitem(title: "chipDemo",page:ChipDemo(),),
        Listitem(title: "DataTable",page:DateTable(),),
        Listitem(title: "PageDateTable",page:PaginatedDataTableDemo(),),
        Listitem(title: "CardDemo",page:CardDemo(),),
        Listitem(title: "https",page:Http(),),

      ],),
    );
  }

  Widget _floatingActionButton(context){
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FormDemo()),
        );
      },
    );
  }
  Widget _floatingActionButtons(){
    return FloatingActionButton.extended(
      icon: Icon(Icons.add),
      label: Text("add"),
    );
  }
}

class Listitem extends StatelessWidget {
  final String title;
  final Widget page;
  Listitem({
    this.title,
    this.page
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },      
    );
  }
}