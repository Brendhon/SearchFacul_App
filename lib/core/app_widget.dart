import 'package:flutter/material.dart';
import 'package:search_facul/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Search Facul",
      home: SplashPage(),
    );
  }
}
