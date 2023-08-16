import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:order_food_mobile/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Order Food Mobile',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          fontFamily: 'Ubuntu',
          textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
          // useMaterial3: true,
        ),
        home: const HomeScreen());
  }
}
