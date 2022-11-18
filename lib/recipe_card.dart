import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import "./recipe_page.dart";
import "./recipes.dart";

class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key, required this.name, required this.asset});
  final String name;
  final String asset;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RecipePage(
                      name: name,
                      asset: asset,
                      ingredients:
                          recipes[name]!["ingredients"] as List<String>,
                      instructions: recipes[name]!['instructions'] as String)));
        },
        child: Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 46, 46, 46),
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
            child: Column(children: [
              Text(
                name,
                style: GoogleFonts.acme(
                  fontSize: 30,
                  color: Colors.orange,
                ),
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    asset,
                  ))
            ])));
  }
}
