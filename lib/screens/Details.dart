import 'package:flutter/material.dart';
import '../BD/db.dart';
import '../entities/Film.dart';

class Details extends StatelessWidget {
  final Film film;

  const Details({super.key, required this.film});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(film.title, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(film.image),
            SizedBox(height: 20),
            Text(
              film.description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(film.price.toString()+"DT", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 50,
              child: ElevatedButton(
                onPressed: ()async {
                  await DB.addItem(
                    film.title,
                    film.image,
                    film.description,
                    film.price.toDouble(),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${film.title} ajouté au panier !")),
                  );
                },




                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange, foregroundColor: Colors.white),
                child: Row(
                  children: [
                    Icon(Icons.shopping_basket, color: Colors.white),
                    SizedBox(width: 10),
                    Text("Acheter", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
