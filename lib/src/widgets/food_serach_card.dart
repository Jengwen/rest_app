
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FoodSearchCard extends StatefulWidget{
final String id;
  final String name;
  final String imgPath;
  final String category;
  final String description;
  final double price;
  final double discount;
  final double ratings;

 FoodSearchCard({this.id, this.name, this.imgPath, this.category,this.description, this.price, this.discount, this.ratings});

  @override 
  _FoodSearchCardState createState() => _FoodSearchCardState();
}

class _FoodSearchCardState extends State<FoodSearchCard>{
  @override 
  Widget build(BuildContext context){
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
          child: Stack(
        children: <Widget>[
          Container(
            height: 200,
            width: 340, 
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
              child: Container(
              height: 60.0,
              width: 340,
              
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
                    Image(
            image: AssetImage(widget.imgPath),
            height: 85.0,
            width: 85.0,
          ),
                    Text(
                     widget.name,
                      style: TextStyle(
                        color: Colors.grey,
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
                    fontSize: 18,
                            )),
                    Text(
                      "Description",
                      style: TextStyle(
                      color: Colors.grey,
                    )
                    ),
                       RaisedButton(onPressed: null, child: Text("Buy"))],
                ),
              ],
              ),
          ),
      ],),
    );
  }
}