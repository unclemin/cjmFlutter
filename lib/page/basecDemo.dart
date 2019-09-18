import 'package:flutter/material.dart';

// class BaseDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:RichText(
//         text: TextSpan(
//           text: "nidhjags",
//           style: TextStyle(color: Colors.pink,fontSize: 26.0,fontStyle: FontStyle.italic),
//           children: [
//             TextSpan(
//               text: "1321231",
//               style: TextStyle(color: Colors.purple,fontSize: 16.0)
//             )
//           ]
//         ),
//       )
//     );
//   }
// }
class BaseDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.black12,
      decoration: BoxDecoration(
        image:DecorationImage(
          image: NetworkImage('https://img.zcool.cn/community/0136a65d7fb33da801211d53cb0198.jpg@1280w_1l_2o_100sh.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.indigoAccent[400].withOpacity(0.2),
            BlendMode.hardLight
          ),
          // repeat: ImageRepeat.repeatX
        )
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(40.0),
            // color: Colors.pink,
            child: Icon(Icons.poll,color: Colors.white,),
            decoration: BoxDecoration(
              color: Colors.pink,
              border: Border.all(
                color: Colors.yellow,
                width: 3.0,
                style: BorderStyle.solid
              ),
              // borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  offset:Offset(5.0, 5.0),
                  color: Colors.red,
                  blurRadius: 10.0,
                  spreadRadius: 0.0,
                )
              ],
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.green,
                ],
                begin: Alignment.topLeft,
              )
            ),
          )
        ],
        )
      );
  }
}