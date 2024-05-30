import 'package:flutter/material.dart';

class AppTheme {
  static const Color white = Color(0xFFfcfcfc);

  static const Color whiteFigma= Color(0xFFFFFFFF);
  static const Color primaryColor = Color(0xFF272D8D);
  static const Color secondaryColor = Color(0xFFF2D335);
  static const Color textColorPrimary = Color(0xFF1F1F1F);
  static const Color textColorCards = Color(0xFFEDEDED);
  static const Color textColorCards2 = Color(0xFFF2F2F2);
  static const Color borderLineTextField = Color(0xFFDFDFDF);
  static const Color hinText = Color(0xFF5B5B5B);


  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppTheme.whiteFigma,
      cardColor: AppTheme.whiteFigma,
      cardTheme: const CardTheme(
        color: AppTheme.whiteFigma
      ),

    );
  }


  static const String iconErrorPath = 'assets/error.svg';
  static const String iconAlertPath = 'assets/alert.svg';
  static const String iconCheckPath = 'assets/success.svg';

}