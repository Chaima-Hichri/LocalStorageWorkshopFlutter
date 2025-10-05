import 'package:flutter/material.dart';
import 'package:workshops_sae/screens/BottomNavBar.dart';
import 'package:workshops_sae/screens/MyCart.dart';
import 'package:workshops_sae/screens/MyFilmsGridView.dart';
import 'package:workshops_sae/screens/MyFilmsListView.dart';
import 'package:workshops_sae/screens/SignIn.dart';
import 'package:workshops_sae/screens/SignUp.dart';
import 'package:workshops_sae/screens/TabBarNav.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // ⚠ important pour sqflite

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignIn(),
    );
  }
}

