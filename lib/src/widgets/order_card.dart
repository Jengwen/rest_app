import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 75,
              width: 45,
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.keyboard_arrow_up)
                    ),
                  Text("0", style:TextStyle(fontSize: 18)),
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.keyboard_arrow_down)
                    )
                ],
                ),
            ),
            SizedBox(width:20),
             Container(
               height: 70,
               width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage("assets/images/waffle.jpg" ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5.0,
                    offset: Offset(0,5),
                  )
                ]
              ),
            ),
            SizedBox(width:20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Waffle", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 5.0),
                Text("2.99", style: TextStyle(fontSize: 16)),
                SizedBox(height: 5.0),
                Container(
                  height: 25,
                  width: 180,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Row(
                          children: <Widget>[
                            Text("Chocolate Chips",style: TextStyle(color: Colors.grey) ),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: (){},
                              child: Text("x", style: TextStyle(color: Colors.red)),
                              ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Row(
                          children: <Widget>[
                            Text("Chocolate Chips",style: TextStyle(color: Colors.grey) ),
                            SizedBox(width: 5),
                            InkWell(
                              onTap: (){},
                              child: Text("x", style: TextStyle(color: Colors.red)),
                              ),
                          ],
                        ),
                      ),
                     ],
                  ),
                  ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: (){},
              child: Icon(Icons.cancel, color: Colors.grey[300])),
          ],
        ),
      ),
      );
  }
}