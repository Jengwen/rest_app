import 'package:flutter/material.dart';
import 'package:food_app/src/pages/food_search_page.dart';
import 'package:food_app/src/pages/profile_page.dart';
//Pages
import '../pages/home_page.dart';
import '../pages/order_page.dart';
import '../pages/profile_page.dart';
import '../pages/food_search_page.dart';

class MainScreen extends StatefulWidget{
  @override 

  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State <MainScreen>{

int currentTabIndex = 0;
//create list of pages to navigate between
List<Widget> pages;
//variable for current page
Widget currentPage;
//create instance of home page
HomePage homePage;
OrderPage orderPage;
ProfilePage profilePage;
FoodSearchPage favoritesPage;

  @override 

  void initState(){
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    profilePage = ProfilePage();
    favoritesPage = FoodSearchPage();
    pages =[
      homePage, favoritesPage, orderPage, profilePage
    ];

    currentPage = homePage;
  }

  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        //specify type of  navigation bar
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text("Find")
              ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              title: Text("Order")
              ),
          
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile")
              ),
        ],
        ),
        body: currentPage,
    );

    
  }
}