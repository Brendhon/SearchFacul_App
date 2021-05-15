import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    Color(0xFF2193b0),
    Color(0xFF6dd5ed),
  ], stops: [
    0.0,
    0.695
  ], transform: GradientRotation(2.13959913 * pi));
}
