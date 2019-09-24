import 'package:flutter/material.dart';
import '../mode/post.dart';

class DateTable extends StatefulWidget {
  @override
  _DateTableState createState() => _DateTableState();
}

class _DateTableState extends State<DateTable> {
  int _sortColumnIndex;
  bool _sortAscending = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DateTable"),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            DataTable(
              sortColumnIndex: _sortColumnIndex,
              sortAscending: _sortAscending,
              columns:[
                DataColumn(
                  label: Text("data"),
                  onSort:(int index ,bool ac){
                    setState(() {
                      _sortColumnIndex = index;
                      _sortAscending = ac;
                      posts.sort((a,b){
                        if(!ac){
                          final c= a;
                          a=b;
                          b=c;
                        }
                        return a.title.length.compareTo(b.title.length);
                      });
                    });
                  }
                ),
                DataColumn(
                  label: Text("data")
                ),
                DataColumn(
                  label: Text("image")
                )
              ],
              rows: posts.map((post){
                return DataRow(
                  selected:post.selected,
                  onSelectChanged: (isChanges){
                    setState(() {
                      if(post.selected!=isChanges){
                        post.selected=isChanges;
                      } 
                    });
                  },
                  cells: [
                    DataCell(Text(post.title)),
                    DataCell(Text(post.author)),
                    DataCell(Image.network(post.imageUrl))
                  ]
                );
              }).toList()
            )
          ],
        ),
      )
    );
  }
}