import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class AppTheme {
  static final theme = ThemeData(
      fontFamily: 'Poppins',
      primaryTextTheme: const TextTheme(),
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: false,
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //         primary: Colors.blue.shade700,
      //         elevation: 8,
      //         padding: EdgeInsets.all(8.dh),
      //         shape: RoundedRectangleBorder(
      //             borderRadius: BorderRadius.circular(8.dw)),
      //         minimumSize: Size(250.dw, 40.dh))),
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor:AppColors.red,
        titleTextStyle:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      // cardTheme: CardTheme(
      //     elevation: 10,
      //     shape:
      //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      // ),
    //  colorScheme: ColorScheme(background: Colors.white)
  );
}
