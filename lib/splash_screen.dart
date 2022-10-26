import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:listnbuy/start_screen.dart';



class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key, }) : super(key: key);


  @override
  State<Splashscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Splashscreen> {


  void initState() {
    Timer(Duration(seconds: 5), () async {
      await Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Startscreen()));
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body: Center(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 118.w,vertical: 426.h),
              width: 178.w,
              height: 45.h,
              child:Image.asset("images/listnbuylogo.png",)







          ),
        )
    );


  }
}