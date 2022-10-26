

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Container (
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3/2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: 8,
            itemBuilder: (BuildContext ctx, index) {


              return Card(

                child:Column(

                  children: [

Container(decoration: BoxDecoration(

                    
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))),
    child: SizedBox(height:80,width:double.maxFinite,child: Image.asset("images/bike.png",fit: BoxFit.fill,))),

                    Text('Motorbikes' ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}