import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class dateTime extends StatefulWidget {
  @override
  _dateTimeState createState() => _dateTimeState();
}
class _dateTimeState extends State<dateTime> {
  DateTime _stime = DateTime.now();
  TimeOfDay _h = TimeOfDay(hour: 12,minute: 30);

  void _show() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: _stime,
      firstDate: DateTime(1997),
      lastDate: DateTime(2050),
    );
    if(date == null) return;
    setState(() {
     _stime = date; 
    });
  }
  void _shows() async {
    TimeOfDay dates = await showTimePicker(
      context: context,
      initialTime: _h,
    );
    if(dates == null) return;
    setState(() {
     _h = dates; 
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dateTime"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _show,
                  child: Row(
                    children: <Widget>[
                      Text(DateFormat.yMMMd().format(_stime)),
                      Icon(Icons.drive_eta)
                    ],
                  ),
                ),
                InkWell(
                  onTap: _shows,
                  child: Row(
                    children: <Widget>[
                      Text(_h.format(context)),
                      Icon(Icons.drive_eta)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      );
  }
}