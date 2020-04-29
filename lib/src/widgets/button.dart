import 'package:flutter/material.dart';

class Button extends StatelessWidget{


final String btnText;

Button({this.btnText});

@override

Widget build(BuildContext context){
return  Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(
                    child: Text(
                      btnText,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white),
                    ),
                  ),
              );
}
}