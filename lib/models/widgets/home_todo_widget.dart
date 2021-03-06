import 'package:flutter/material.dart';
import 'package:notes/models/global.dart';

class HomeTodo extends StatelessWidget {
  final String title;
  final String KeyValue;
  HomeTodo({this.KeyValue, this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(KeyValue),
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(10),
      height: 100,
     decoration: BoxDecoration(
       color: panelColor,
       borderRadius: BorderRadius.all(Radius.circular(10)),
       boxShadow: [
         new BoxShadow(
           color: Colors.black.withOpacity(0.5),
           blurRadius: 10.0,
         ),
       ],
     ),
      child: Row(
        children: <Widget>[
          Radio(value: null, groupValue: null, onChanged: null,),
          Column(
            children: <Widget>[
              Text(title, style: darkTodoTitle,)
            ],
          ),
        ],
      ),
    );
  }
}