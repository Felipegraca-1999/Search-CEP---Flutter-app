import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_cep/ui/home_page.dart';


void main() {
  runApp(GetMaterialApp(
    defaultTransition: Transition.native,
    initialRoute: '/',
    getPages: [
      GetPage(name: "/", page: () => HomePage())
    ],
    debugShowCheckedModeBanner: false,
    //theme: ThemeData(primaryColor: Colors.black),
  ));
}
