import 'package:flutter/material.dart';
import 'package:workshops_sae/screens/BottomNavBar.dart';
import 'package:workshops_sae/screens/SignIn.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child:Image.asset("assets/images/logo.png")),
          ListTile(
            leading: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
            title: Text("Update Profile"),
          ),
          ListTile(
            leading: IconButton(onPressed: (){
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)=>SignIn()));
            }, icon: Icon(Icons.logout)),
            title: Text("logout"),
          ),

          ListTile(
            leading: IconButton(onPressed: (){

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context)=>BottomNavBar()));
            }, icon: Icon(Icons.arrow_forward_rounded)),
            title: Text("go to navbar"),
          ),
        ],
      ),
    );
  }
}
