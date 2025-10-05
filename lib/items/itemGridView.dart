
import 'package:flutter/material.dart';
class itemGridView extends StatelessWidget {
  final String title;
  final String image;
  const itemGridView({super.key,required this.image,required this.title});

  @override
  Widget build(BuildContext context) {
    return Card (
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.asset("$image"),
            Text("$title",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
