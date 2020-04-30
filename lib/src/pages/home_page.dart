import 'package:flutter/material.dart';
import '../widgets/home_top_info.dart';
import '../widgets/food_category.dart';
import '../widgets/search_field.dart';
import '../widgets/bought_foods.dart';
//pass in food data
import '../data/food_data.dart';
import '../models/food_model.dart';

//create homescreen class
class HomePage extends StatefulWidget{
@override
  _HomePageState createState()=> _HomePageState();

}

//create list of foods from food data
List <Food> _foods = foods;

//build homescreen that scaffolds what you see on the home screen

class _HomePageState extends State<HomePage>{
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
         SerachField(),
         SizedBox(height: 20),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Text("Frequently Purchased",
             style:TextStyle(
               fontSize: 18,
               fontWeight: FontWeight.bold
             ),
             ),
             GestureDetector(
               onTap: (){},
               child: Text("View All",
               style:TextStyle(
                 fontSize: 18,
                 fontWeight: FontWeight.bold,
                 color: Colors.orangeAccent
               ),
               ),
             ),
           ],
           ),
           SizedBox(height:20),
           Column(
             children: _foods.map(_buildFoodItems).toList()
           ),
        ]
      )
      );
      }
      //method to create container of food items
       Widget _buildFoodItems(Food food){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: BoughtFoods(
            id:food.id,
            name: food.name,
            price: food.price,
            imgPath: food.imgPath,
            discount: food.discount,
            ratings: food.ratings
          )
        );      }
  }