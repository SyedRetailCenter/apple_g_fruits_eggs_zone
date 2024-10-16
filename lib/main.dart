import 'package:flutter/material.dart';
import 'package:apple_g_fruits_eggs_zone/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(const TextTheme(
            headlineSmall: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xffE54444)),
            labelSmall: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff4CAF50),
            ),
            bodySmall: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w500, color: Colors.black),
            bodyMedium: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black))),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
