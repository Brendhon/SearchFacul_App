import 'dart:async';
import 'package:search_facul/home/home_page.dart';

import '../core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // Atributos
  double value = 250;
  double minValue = 250;
  double maxValue = 300;

  // Atributos estáticos
  static const time = Duration(milliseconds: 600);

  // Métodos
  void run() => {
        if (mounted)
          setState(
              () => value == minValue ? value = maxValue : value = minValue)
      };

  @override
  void initState() {
    // Aguardar alguns segundos e navegar para Home
    Future.delayed(Duration(seconds: 6)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage())));

    if (mounted) Timer.periodic(time, (Timer t) => run());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Center(
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: value,
            width: value,
            child: SvgPicture.asset(AppImages.logo),
          ),
        ),
      ),
    );
  }
}
