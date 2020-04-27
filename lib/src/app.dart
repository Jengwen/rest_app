import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

//create main app class
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
  return MaterialApp(
    title: "Food Delivery App",
    theme: ThemeData(
      primaryColor: Colors.yellowAccent
    ),
    home: MainScreen(),
  );
  }
}