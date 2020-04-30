import 'package:flutter/material.dart';
import 'food_card.dart';
import '../data/category_data.dart';
import '../models/category_model.dart';

class FoodCategory extends StatelessWidget{
//list of categories
final List<Category> _categories = categories;

@override
Widget build(BuildContext context){

  //build list of categories on cards
  return Container(
    height: 80,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _categories.length,
      itemBuilder: (BuildContext context, int index){
        return FoodCard(
          categoryName: _categories[index].categoryName,
          imagePath: _categories[index].imagePath,
          numOfItems: _categories[index].numOfItems,
        );
      },
    ),
  );
}
}