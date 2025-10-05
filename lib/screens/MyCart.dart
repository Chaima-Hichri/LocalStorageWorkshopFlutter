import 'package:flutter/material.dart';
import 'package:workshops_sae/items/ItemBasket.dart';

import '../BD/db.dart';
import '../entities/Film.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  List<Map<String, dynamic>> films = [];

  @override
  void initState() {
    super.initState();
    _loadCart();
  }

  Future<void> _loadCart() async {
    films = await DB.getItems();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mon Panier")),
      body: ListView.builder(
        itemCount: films.length,
        itemBuilder: (context, index) {
          final film = films[index];
          return ListTile(
            leading: Image.asset(film['image'], width: 50, height: 50, fit: BoxFit.cover),
            title: Text(film['title']),
            subtitle: Text("${film['price']} DT"),
            trailing: IconButton(
              icon: Icon(Icons.delete, color: Colors.red),
              onPressed: () async {
                await DB.removeItem(film['id']);
                _loadCart();
              },
            ),
          );
        },
      ),
    );
  }
}