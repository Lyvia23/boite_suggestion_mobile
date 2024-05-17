// ignore_for_file: avoid_print

import 'package:boite_suggestion/routes/app.pages.dart';
import 'package:boite_suggestion/routes/app.routes.dart';
import 'package:boite_suggestion/theme/app_theme.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SIGIF2 v2',
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.pages,
      initialRoute: AppRoutes.LOGIN,
    );
  }
}
