import 'package:flutter/material.dart';
import 'package:koenas_first_app/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(KoenApp());

class KoenApp extends StatelessWidget {
  const KoenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Koena's App",
      home: const Homepage(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.greenAccent,
        textTheme: GoogleFonts.bebasNeueTextTheme(),
      ),
    );
  }
}

