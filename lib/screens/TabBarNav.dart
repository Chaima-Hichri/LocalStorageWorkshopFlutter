import 'package:flutter/material.dart';
import 'package:workshops_sae/items/CustomDrawer.dart';
import 'package:workshops_sae/screens/MyCart.dart';
import 'package:workshops_sae/screens/MyFilmsGridView.dart';
import 'package:workshops_sae/screens/MyFilmsListView.dart';
class TabBarNav extends StatefulWidget {
  const TabBarNav({super.key});

  @override
  State<TabBarNav> createState() => _TabBarNavState();
}

class _TabBarNavState extends State<TabBarNav> with SingleTickerProviderStateMixin {
  late TabController tabController;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController=TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar:AppBar(
        title: Text("STORE"),
        bottom: TabBar(
            controller: tabController,
            tabs:[
              Tab(icon: Icon(Icons.store),text: "Store",),
              Tab(icon: Icon(Icons.list),text: "Bibliotheque",),
              Tab(icon: Icon(Icons.shopping_basket),text: "basket",)
            ]
        
        ),
      ) ,

      body: TabBarView(
          controller: tabController,
          children: [
            MyFilmsListView(),
            MyFilmsGridView(),
            MyCart()

      ]),
    
    );
  }
}
