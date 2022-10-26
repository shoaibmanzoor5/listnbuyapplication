import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:listnbuy/getway_screen.dart';
import 'package:listnbuy/splash_screen.dart';
import 'package:listnbuy/start_screen.dart';
import 'package:listnbuy/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override


  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size (414, 896),
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                textTheme: GoogleFonts.nunitoTextTheme(
                  Theme.of(context).textTheme,
                )
            ),

             home: getway(),


          );

        }
    );
  }
}


