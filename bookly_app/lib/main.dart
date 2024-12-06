import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utlis/approuter.dart';
import 'package:bookly_app/features/splash/presentaion/views/spalsh%20view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Approuter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Scolor,
          brightness: Brightness.dark,
          fontFamily: 'Montserrat'),
    );
  }
}
