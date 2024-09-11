import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentapp/screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Color surfaceColor = Colors.blueGrey.shade50;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RentApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black38),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: surfaceColor,
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}