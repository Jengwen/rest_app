import 'package:flutter/material.dart';
import '../widgets/food_serach_card.dart';
import '../data/food_data.dart';
import '../models/food_model.dart';

class FoodSearchPage extends StatefulWidget{
  @override 
  _FoodSearchPageState createState()=> _FoodSearchPageState();
}

//create list of foods from food data
List <Food> _foods = foods;
class _FoodSearchPageState extends State<FoodSearchPage>{
  @override 

  Widget build(BuildContext context){
    return Scaffold(
      
      body:ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal:16, vertical:20),
                children: <Widget>[
            Text("Menu", style: (TextStyle(fontSize:24, fontWeight: FontWeight.bold)
            ),),
            Container(
              
              margin: EdgeInsets.symmetric(vertical:5),
              width: MediaQuery.of(context).size.width,
              height: 750,
              child: Row(
                children: <Widget>[
                  Column(
                    
             children: _foods.map(_buildFoodSearchItems).toList()
           ),
                 
                ],
              ),
            )
          ],
          
          ),
      );
 
  }
   //method to create container of food items
       Widget _buildFoodSearchItems(Food food){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: FoodSearchCard(
            id:food.id,
            name: food.name,
            description: food.description,
            price: food.price,
            imgPath: food.imgPath,
            discount: food.discount,
            ratings: food.ratings
          )
        );      }
}