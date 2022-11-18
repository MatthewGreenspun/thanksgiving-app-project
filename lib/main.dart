import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "./custom_icons_icons.dart";
import "./recipe_card.dart";
import "./appbar.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Thanksgiving App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Thanksgiving App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIdx = 0;
  final _cards = const [
    [
      RecipeCard(name: "Roasted Turkey", asset: "turkey.jpeg"),
      RecipeCard(name: "Stuffed Turkey", asset: "stuffed_turkey.jpg"),
      RecipeCard(name: "Cranberry Turkey", asset: "cranberry_turkey.jpeg"),
    ],
    [
      RecipeCard(name: "Hot Chocolate", asset: "hot_chocolate.jpg"),
      RecipeCard(name: "Lemon Water", asset: "lemon_water.jpg"),
      RecipeCard(name: "Iced Tea", asset: "iced_tea.jpg"),
    ],
    [
      RecipeCard(name: "Pumpkin Pie", asset: "pumpkin_pie.jpg"),
      RecipeCard(name: "Apple Pie", asset: "apple_pie.jpg"),
      RecipeCard(name: "Berry Pie", asset: "berry_pie.jpg"),
    ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThanksgivingAppBar("Thanksgiving App"),
      body: ListView(
          scrollDirection: Axis.vertical, 
          children: _cards[_selectedIdx]
        ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 46, 46, 46),
        currentIndex: _selectedIdx,
        onTap: (value) => setState(() {
          _selectedIdx = value;
        }),
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        unselectedItemColor: const Color.fromARGB(255, 172, 172, 172),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                CustomIcons.kiwi_bird,
              ),
              label: "Turkey"),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.beer), label: "Drinks"),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.birthday), label: "Dessert"),
        ],
      ),
    );
  }
}
