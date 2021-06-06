import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mokshya_ecommerce_admin/pages/dashboard.dart';
import 'package:mokshya_ecommerce_admin/login/loginpage.dart';

//import 'package:mokshya_ecommerce_admin/components/add_category.dart';
// import 'package:mokshya_ecommerce_admin/components/add_Product.dart';

void main() async {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: HexColor("#660099"),
      ),
      debugShowCheckedModeBanner: false,
      home: AdminLoginPage(),
    ),
  );
}
