import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override 
  _ProfilePageState createState()=> _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{

//variable for notifications
  bool turnOnNotification = false;

  @override 

  Widget build(BuildContext context){
    return Scaffold(

      body: Container(
        padding:EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
        children: <Widget>[
          Center(
            child: Text("Profile", 
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold),
              ),
          ),
            SizedBox(height:25),
            Text("My Name",style:TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text("Phone Number"),
            SizedBox(height: 20),
            Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                  
                 borderRadius: BorderRadius.circular(20),
              ),
               child: Center(
                 child: Text("Edit", style: TextStyle(color:Colors.grey, fontWeight: FontWeight.bold, fontSize: 16)
                 ),
               ),
            ),     
            SizedBox(height: 25),
            Text("Account", style: TextStyle(
              fontSize:20, fontWeight: FontWeight.bold ),
              ),
              SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text("Location"),
                    ),
                    Divider(height:10, color:Colors.grey, indent:5),
                    ListTile(
                      leading: Icon(Icons.visibility_off),
                      title: Text("Change Password"),
                    ),
                    Divider(height:10, color:Colors.grey, indent:5),
                    ListTile(
                      leading: Icon(Icons.payment),
                      title: Text("Payment"),
                    ),
                    
                  ]),
                  ),
                  
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text("Notifications"),
                      trailing: Switch(
                        value:turnOnNotification,
                        onChanged: (bool value){
                         setState(() {
                            turnOnNotification = true;
                         });
                        },
                      ),
                    ),
                                                        
                  ]),
                  ),
                  
              ),
        ],
        ),
      )
    );
  }
}