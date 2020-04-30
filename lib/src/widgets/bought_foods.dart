
import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget{
final String id;
  final String name;
  final String imgPath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

 BoughtFoods({this.id, this.name, this.imgPath, this.category, this.price, this.discount, this.ratings});

  @override 
  _BoughtFoodState createState() => _BoughtFoodState();
}

class _BoughtFoodState extends State<BoughtFoods>{
  @override 
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
          child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            width: 340, 
            child: Image.asset(widget.imgPath, fit: BoxFit.cover,),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
              child: Container(
              height: 60.0,
              width: 340,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: 
                  [
                    Colors.black, Colors.black12
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                  ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            right: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                     widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                         ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color: Colors.blue,size: 16,),
                        Icon(Icons.star, color: Colors.blue,size: 16,),
                        Icon(Icons.star, color: Colors.blue,size: 16,),
                        Icon(Icons.star, color: Colors.blue,size: 16,),
                        Icon(Icons.star, color: Colors.blue,size: 16,),
                        SizedBox(width:12),
                        Text(
                          widget.ratings.toString(),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                children: <Widget>[
                  Text(
                    widget.price.toString(),
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                    fontSize: 18
                    )),
                    Text(
                      "Min. Order",
                      style: TextStyle(
                      color: Colors.grey,
                    )
                    ),
                ],
                ),
              ],
              ),
          ),
      ],),
    );
  }
}