import 'package:flutter/material.dart';

class SerachField extends StatelessWidget{
@override

Widget build(BuildContext context){
  return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal:20, vertical:15),
          hintText: "Search any food",
          suffixIcon: Icon(Icons.search),
          border: InputBorder.none
      ),
    ),
  );
}
}
  

