import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class getway extends StatelessWidget {
  const getway({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 50),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Text("Welcome to the Gateway!",style: TextStyle(fontSize: 24.sp),),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Choose a category ',style: TextStyle(
                      fontSize: 14,fontWeight: FontWeight.w400,fontStyle: FontStyle.normal,
                      color: aothertextColor
                  ),),
                  const SizedBox(width: 20,),
                  Stack(
                    children: [
                          const Icon(Icons.notifications_none_rounded,color: atextblueColor,),
                           Positioned(
                            right: 0,
                            child:  Container(
                              padding: const EdgeInsets.all(1),
                              decoration:  BoxDecoration(
                                color: bluePrimaryColor,
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 12,
                                minHeight: 12,
                              ),
                              child: const Text(
                                '1',
                                style:  TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
              const SizedBox(height: 10,),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 30.0,
                  crossAxisSpacing: 13
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                       Card(
                        child: Column(
                          children: [
                            Image.asset("images/bike.png",fit: BoxFit.cover,height: 130,),
                            const SizedBox(
                              height: 5,
                            ),
                            const Text("Motorbikes"),
                          ],
                        ),
                      ),

                    ],
                  );
                },
              )
            ],
              ),
        ),
      ),
    );


    }
}
