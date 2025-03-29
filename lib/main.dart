import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:trueguide/accountscreen/kyc/kyc2.dart';
import 'package:trueguide/logIn.dart';
import 'accountscreen/account.dart';
import 'accountscreen/addproduct.dart';
import 'accountscreen/businessdetail/busdet2.dart';
import 'accountscreen/dashboard.dart';
import 'accountscreen/personal.dart';
import 'accountscreen/wishlist.dart';
import 'bottomnav/Bottom_Naviga.dart';
import 'bottomnav/architecture.dart';
import 'bottomnav/category.dart';
import 'bottomnav/features.dart';
import 'logout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:BusinessDet2(),
    );
  }
}


