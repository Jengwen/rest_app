import 'package:flutter/material.dart';
import 'package:food_app/src/models/food_model.dart';
import 'package:food_app/src/scoped_models/main_model.dart';
import 'package:food_app/src/widgets/button.dart';
import 'package:scoped_model/scoped_model.dart';


class AddFoodItem extends StatefulWidget{
 
 final Food food;

 AddFoodItem({this.food});

  @override 
  _AddFoodItemState createState()=> _AddFoodItemState();
}

class _AddFoodItemState extends State<AddFoodItem> {
  String name;
  String category;
  String imgPath;
  String price;
  String description;

  GlobalKey<FormState> _foodFormKey = GlobalKey();
  GlobalKey<ScaffoldState> _scaffoldStateKey = GlobalKey();

@override 

Widget build(BuildContext context){
  return Scaffold(
    body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(vertical: 60, horizontal:16),
          child: Form(
          key:_foodFormKey,
                child: Column(
            children:<Widget> [
              Container(
                margin: EdgeInsets.only(bottom: 15),
                width: MediaQuery.of(context).size.width,
                height: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
              _buildFormField("Food Name"),
              _buildFormField("Category"),
              _buildFormField("Description"),
              _buildFormField("Price"),
              _buildFormField("Image Path"),
              SizedBox(height: 50),
             ScopedModelDescendant(
               builder: 
               (BuildContext context, Widget child, MainModel model){
                 return  GestureDetector(
                onTap: (){
                  _foodFormKey.currentState.save();
                  //create an object of the food model to save to firebase db
                 final Food food = Food(
                    name: name,
                    category: category,
                    description: description,
                    price: double.parse(price),
                    imgPath: imgPath

                  );
                  model.addFood(food);
                },
                child: Button(btnText:"Add Food"),
                 );
               })
            ],
            ),
        ),
      ),
    ),
    );
}
//method to build input form
Widget _buildFormField(String hint, {int maxLine=1}){
  return TextFormField(
              decoration: InputDecoration(hintText: "$hint"),
              maxLines: maxLine,
              keyboardType: hint == "Price" || hint == "Discount" ? TextInputType.number: TextInputType.text,
              onChanged: (String value){
                if(hint == "Food Name"){
                  name = value;
                }
                if(hint == "Category"){
                  category = value;
                }
                if(hint == "Description"){
                  description = value;
                }
                 if(hint == "Price"){
                  price = value;
                }

                }
                
              );
         
}
}