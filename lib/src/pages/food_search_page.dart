import 'package:flutter/material.dart';
import '../widgets/food_serach_card.dart';
import 'package:food_app/src/admin/pages/add_food_item.dart';
import 'package:food_app/src/models/food_model.dart';
import 'package:food_app/src/scoped-model/main_model.dart';
import 'package:scoped_model/scoped_model.dart';

class FoodSearchPage extends StatefulWidget{
  @override 
  _FoodSearchPageState createState()=> _FoodSearchPageState();
}



class _FoodSearchPageState extends State<FoodSearchPage>{
  @override 

  Widget build(BuildContext context){
    return Scaffold(
      
      body:Container(
        padding: EdgeInsets.symmetric(horizontal:16, vertical:50),
        child: ScopedModelDescendant<MainModel>(
          builder: (BuildContext context, Widget child, MainModel model){
            model.fetchFoods();
            //create list of foods from food data
            List<Food> foods = model.foods;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: foods.map((Food food){
                return FoodSearchCard();
              }).toList()
            );
          }
          ),       
          
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