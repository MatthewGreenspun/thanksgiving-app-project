import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

final ThanksgivingAppBar = (String title) => AppBar(
  title: Text(
    title,
    style: GoogleFonts.acme(fontSize: 40),
  ),
  centerTitle: true,
);
