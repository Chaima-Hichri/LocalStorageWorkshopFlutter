import 'package:flutter/material.dart';
import 'package:workshops_sae/items/CustomDrawer.dart';
import 'package:workshops_sae/screens/MyCart.dart';
import 'package:workshops_sae/screens/MyFilmsGridView.dart';
import 'package:workshops_sae/screens/MyFilmsListView.dart';
import 'package:workshops_sae/screens/Profile.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  int pageIndex =0;
  List<Widget> interfaces =[MyFilmsListView(),MyFilmsGridView(),MyCart(),Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text("STORE"),
        ),

        bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
          onTap: (value){
          setState(() {
            pageIndex=value;
          });

          },
            backgroundColor: Colors.white,
            selectedItemColor: Colors.deepOrange,
            unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.store),label: "Store"),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt),label: "Bibliotheque"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_basket),label: "Basket",),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          ]

        ),

      body: interfaces[pageIndex],


    );
  }
}
