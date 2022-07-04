import 'dart:math';

import 'package:burc_rehberi/BurcListesis.dart';
import 'package:burc_rehberi/routerrr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      onGenerateRoute: RouterrGenerator.routeGenerotorr,
    );
  }

  Color R() {
    var Chief = Random();
    int a = Chief.nextInt(255);
    int b = Chief.nextInt(255);
    int c = Chief.nextInt(255);

    Color cavid = Color.fromRGBO(a, b, c, 1);
    return cavid;
  }
}
