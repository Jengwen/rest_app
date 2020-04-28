import 'package:flutter/material.dart';
import '../widgets/order_card.dart';
import '../pages/sign_in_page.dart';

class OrderPage extends StatefulWidget{
  @override 
  _OrderPageState createState()=> _OrderPageState();
}

class _OrderPageState extends State<OrderPage>{
  @override 

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Order"),
        centerTitle: true,
        elevation: 0,
      ),
          body: ListView(
        scrollDirection: Axis.vertical,
  children: <Widget>[
         OrderCard(),
        OrderCard(),
         OrderCard(),
          OrderCard(),
        ],
              ),
      bottomNavigationBar: _buildOrder(), 
    );
 
  }
     Widget _buildOrder(){
        return Container(
          height: 220,
          margin: EdgeInsets.only(top:20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Order Total", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color:Colors.grey)),
                  Text("\u0024 23.00",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
              ),
              SizedBox(height: 12),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Discount", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color:Colors.grey)),
                  Text("\u0024 -3.00",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
              ),
              SizedBox(height:12),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Tax", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color:Colors.grey)),
                  Text("\u0024 3.00",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
              ),
              Divider(height:25, color:Colors.grey),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Total", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color:Colors.grey)),
                  Text("\u0024 23.00",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ],
              ),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context)=>SignInPage()));
                },
                  child: Container(
                  margin: EdgeInsets.only(top:20),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                     color: Colors.lightBlue,
                     borderRadius: BorderRadius.circular(25)
                  ),
                  child: Center(
                    child:
                    Text("Proceed to Checkout", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white))
                  ),
                ),
              ),
            ],
            ),
        );
      }
}