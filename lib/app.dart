import 'package:bloc_cubit/screens/details_screen.dart';
import 'package:bloc_cubit/screens/home.dart';
import 'package:bloc_cubit/themes/dark_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anime App',
      initialRoute: '/',
      theme: customDarkTheme,
      routes: {
        '/': (context) => HomeScreen(),
        'details': (context) => DetailsScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
