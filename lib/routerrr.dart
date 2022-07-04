import 'package:burc_rehberi/BurcListesis.dart';
import 'package:burc_rehberi/burcDetay.dart';
import 'package:burc_rehberi/modullar/burc.dart';
import 'package:flutter/material.dart';

class RouterrGenerator {
  static Route<dynamic>? routeGenerotorr(settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => BurcListesi());
        break;
      case "/burcdetay":
        final burcler secilen = settings.argumnets as burcler;
        return MaterialPageRoute(
          builder: (context) => BurcDetay(burcdetay: secilen),
        );
        break;
    }
  }
}
