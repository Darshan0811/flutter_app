import 'package:flutter/material.dart';
import 'package:flutter_app/pages/homepage.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter app", //app minimize karine j title dekhaay e.
    home: HomePage(),
    //by default app ni theme blue hoy ene red kari.theme color change karva hot restart karvu pade hot reload nai.
    theme: ThemeData(
      primarySwatch: Colors.teal, //swatch etle felaay javu.
    ),
  ));
}
