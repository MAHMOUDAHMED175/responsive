import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive/desktop.dart';
import 'package:responsive/mobile.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
      primarySwatch: Colors.orange
      ),
      //علشان اعمل responsive  بين ال screens


      home: Builder(builder: (BuildContext context) {
        if(MediaQuery.of(context).size.width.toInt()<=580)
          // علشان اعمل responsive  بين ال screens وعلشان لو عايز اغير الداتا جوااسكرين فى حاله الموبايل بالنسبه للويب والعكس صحيح
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 0.8,//علشان فى حاله الموبايل الكلام يصغر عن الويب بمقدار 0.8
            ),
            child:MobileScreen(),
          );
        return DesktopScreen();
      },),


      //علشان اعمل responsive  بين ال screens
      // LayoutBuilder(
      // builder: (BuildContext context, BoxConstraints constraints) {
      // print(constraints.minWidth.toInt());//عشان اعرف حجم الشاشه
      // if(constraints.minWidth.toInt() <= 580)
      //   {
      //     return MobileScreen();
      //   }else {
      //   return DesktopScreen();
      // }
      //   },
      // ) ,
    );
  }
}
