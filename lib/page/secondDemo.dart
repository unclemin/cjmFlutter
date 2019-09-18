import 'package:flutter/material.dart';

class SecondDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        IconBadegs(Icons.polymer),
        IconBadegs(Icons.face),
        IconBadegs(Icons.flag),
      ],
    );
  }
}

class IconBadegs extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadegs(this.icon,{
    this.size=32.0
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon,size: size,color: Colors.white,),
      width:size+ 40.0,
      height: size+40.0,
      color: Colors.green,
    );
  }
}