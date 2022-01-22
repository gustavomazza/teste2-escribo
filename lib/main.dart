import 'package:flutter/material.dart';
import 'package:flutter_application_4/routes/app_pages.dart';
import 'package:flutter_application_4/routes/app_routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "FueltecMob",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Routes.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
