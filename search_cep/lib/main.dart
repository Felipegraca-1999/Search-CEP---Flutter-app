import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:search_cep/ui/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    defaultTransition: Transition.native,
    initialRoute: '/home',
    getPages: [
      GetPage(name: "/home", page: () => HomePage())
    ],
  ));
}
