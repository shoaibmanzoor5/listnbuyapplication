import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'getway_screen.dart';

class Startscreen extends StatefulWidget {
  const Startscreen({
    Key? key,
  }) : super(key: key);

  @override
  State<Startscreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Startscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 110.w),
                        width: 177.w,
                        height: 45.h,
                        child: Image.asset(
                          "images/listnbuylogo.png",
                        )),
                    SizedBox(
                      width: 30.w,
                    ),
                    Container(
                      width: 79.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                        color: afooterColor,
                        border: Border.all(
                          color: bluePrimaryColor,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.only(left: 6.34.w),
                              child: Image.asset(
                                "images/img.png",
                                width: 10.w,
                              )),
                          SizedBox(
                            width: 5.w,
                          ),
                          Container(
                            child: Text(
                              ' English',
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: blackColor),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Container(
                child: Text(
                  'Welcome to Listnbuy',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      color: atextblueColor),
                ),
              ),
              SizedBox(
                height: 23.h,
              ),
              Container(
                width: 505.w,
                height: 749.h,
                child: Stack(
                  children: [
                    SizedBox(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        child: Image.asset(
                          "images/startimg.png",
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                      top: 589.h,
                      left: 106.w,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(19.r),
                          ),
                          width: 231.w,
                          height: 56.h,
                          child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.r),
                                  )),
                                  backgroundColor: MaterialStateProperty.all(
                                      bluePrimaryColor),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(
                                          vertical: 14.h, horizontal: 40.w)),
                                  textStyle:
                                      MaterialStateProperty.all(TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                  ))),
                              child: Text(
                                "POST ADS",
                                style: TextStyle(fontSize: 24),
                              ))),
                    ),
                    // SizedBox(height: 29.h,),
                    Positioned(
                      top: 660.h,
                      left: 106.w,
                      child: Container(

                          // margin: EdgeInsets.symmetric(vertical: 650.h,horizontal: 110.w ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r),
                          ),
                          width: 231.w,
                          height: 56.h,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => getway()));
                              },
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.r),
                                  )),
                                  backgroundColor: MaterialStateProperty.all(
                                      bluePrimaryColor),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(
                                      EdgeInsets.symmetric(
                                          vertical: 14.h, horizontal: 40.w)),
                                  textStyle:
                                      MaterialStateProperty.all(TextStyle(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.normal,
                                  ))),
                              child: Text(
                                "SHOP",
                                style: TextStyle(fontSize: 24),
                              ))),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: 313.w, top: 690.h, right: 0.w),
                        width: 150.w,
                        height: 150.h,
                        child: Image.asset(
                          "images/Rectangle 186.png",
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
