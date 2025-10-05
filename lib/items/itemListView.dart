import 'package:flutter/material.dart';
class itemListView extends StatelessWidget {
  final String title;
  final String image;
  const itemListView({super.key,required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return    Card(
      elevation: 6,
      child:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Image.asset("$image"),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("$title",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Icon(Icons.star,color: Colors.amber,size: 25,)
                ],
              ),
            )

          ],
        ),
      ) ,
    );
  }
}
