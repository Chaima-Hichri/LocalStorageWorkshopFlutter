import 'package:flutter/material.dart';
import 'package:workshops_sae/items/itemGridView.dart';
import 'package:workshops_sae/items/itemListView.dart';

import '../entities/Film.dart';
class MyFilmsGridView extends StatefulWidget {
  const MyFilmsGridView({super.key});

  @override
  State<MyFilmsGridView> createState() => _MyFilmsGridViewState();
}

class _MyFilmsGridViewState extends State<MyFilmsGridView> {

  final List<Film> films = const [
    const Film("House Of Dead", "assets/images/HouseOfDead.jpg","The House of the Dead is a classic arcade light gun shooter series from Sega that features government agents fighting hordes of biologically engineered undead and mutants",300),
    const Film("IceRoad", "assets/images/iceroad.jpg","The Ice Road follows a team of truck drivers on a dangerous mission over frozen lakes and winter roads to deliver a crucial component to save workers trapped in .",200),
    const Film("The abyss", "assets/images/theabyss.jpg","An abyss is a deep, immeasurable, and unfathomable space, gulf, or void, which can be a literal chasm or a figurative concept representing a profound crisis, emotional low point, or overwhelming challenge",100),
    const Film("The Grudge", "assets/images/thegrudge.jpg","The Grudge is a curse, born when someone dies in extreme rage or sorrow and lingers where the person dies. Those who encounter it will die, and the curse is ..",150),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.builder(
        itemCount: films.length,

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 10,
            mainAxisExtent: 155

          ),

          itemBuilder: (context,index){
            return itemGridView(image: films[index].image, title: films[index].title);
          }


      )

    );
  }
}
