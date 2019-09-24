import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}
class _ChipDemoState extends State<ChipDemo> {
   List<String> _tag=[
    "Apple",
    "Leomon",
    "Banana"
  ];
  String action="Nothing";
  List<String> _select=[];
  String actions="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chipdemo"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text("12365"),
                ),
                Chip(
                  label: Text("65456"),
                  backgroundColor: Colors.pink,
                ),
                Chip(
                  label: Text("12365"),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: Text("1"),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 32.0,
                  indent: 32.0,
                  endIndent: 32.0,
                )
              ],
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _tag.map((item){
                return Chip(
                  label: Text(item),
                  deleteIconColor: Colors.pink,
                  deleteButtonTooltipMessage:"111111111111111111111",
                  onDeleted: (){
                    setState(() {
                      _tag.remove(item);
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              height: 32.0,
            ),
            Container(
              child: Text("you choise $action"),
              height: 30.0,
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _tag.map((item){
                return ActionChip(
                  label: Text(item),
                  onPressed: (){
                    setState(() {
                     action = item; 
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              height: 32.0,
              color: Colors.pink,
            ),
            Container(
              child: Text("you choise $_select"),
              height: 30.0,
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _tag.map((item){
                return FilterChip(
                  label: Text(item),
                  selected: _select.contains(item),
                  selectedColor: Colors.pink[100],
                  onSelected: (val){
                    setState(() {
                      if(_select.contains(item)){
                        _select.remove(item);
                      }else{
                        _select.add(item);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            Divider(
              height: 32.0,
              color: Colors.pink,
            ),
            Container(
              child: Text("you choise $actions"),
              height: 30.0,
            ),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: _tag.map((item){
                return ChoiceChip(
                  label: Text(item,),
                  selected:actions==item ,
                  selectedColor: Colors.black,
                  backgroundColor: Colors.grey,
                  onSelected: (val){
                    setState(() {
                      actions=item;
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}