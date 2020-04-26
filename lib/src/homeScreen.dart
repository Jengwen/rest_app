import 'package:flutter/material.dart';
import 'widgets/home_top_info.dart';
import 'widgets/food_category.dart';
import 'widgets/search_field.dart';

//create homescreen class
class HomeScreen extends StatefulWidget{
@override
  _HomeScreenState createState()=> _HomeScreenState();

}
//build homescreen that scaffolds what you see on the home screen

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      //scaffold the home screen view with widgets
      body: ListView(
        padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0,bottom: 20.0),
        children: <Widget> [
         HomeTopInfo(),
         FoodCategory(),
         //creates space above search
         SizedBox(height:20),
         SerachField()
        ]
      )
      );
  }
}