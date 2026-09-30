import 'package:flutter/material.dart';
import 'package:flutter_application_1/Routes.dart';
import 'package:flutter_application_1/login_page.dart';
import 'package:flutter_application_1/pages/kalkulator_page.dart';
import 'package:flutter_application_1/Routes.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning App",
      initialRoute: Routes.registration,
      getPages: Routes.MyPages,
    );
  }
}