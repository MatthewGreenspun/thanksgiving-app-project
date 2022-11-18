import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "./appbar.dart";

class RecipePage extends StatelessWidget {
  const RecipePage(
      {super.key,
      required this.name,
      required this.asset,
      required this.ingredients,
      required this.instructions});
  final String name;
  final String asset;
  final List<String> ingredients;
  final String instructions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThanksgivingAppBar(name),
      body: Container(
          padding: const EdgeInsets.all(8),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Text("Ingredients",
                  style: GoogleFonts.acme(fontSize: 40, color: Colors.white)),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: ingredients
                      .map((e) => Row(
                        crossAxisAlignment: CrossAxisAlignment.start, 
                        children: [
                            Container(
                                margin: const EdgeInsets.only(right: 4),
                                child: const Icon(
                                  Icons.add_circle_outline,
                                  color: Colors.white,
                                  size: 20,
                                )),
                            Expanded(child:Text(
                              e,
                              style: const TextStyle(
                                overflow: TextOverflow.clip,
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ))
                          ]))
                      .toList()),
              Text("Instructions",
                  style: GoogleFonts.acme(fontSize: 40, color: Colors.white)),
              Text(
                instructions,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              Container(
                padding: const EdgeInsets.only(top: 8),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8), child: Image.asset(asset)),
              )
            ],
          )),
    );
  }
}
