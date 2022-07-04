import 'package:burc_rehberi/burcitem.dart';
import 'package:burc_rehberi/data/strings.dart';
import 'package:burc_rehberi/modullar/burc.dart';
import 'package:flutter/material.dart';

class BurcListesi extends StatelessWidget {
  late List<burcler> butunburcler;
  BurcListesi() {
    butunburcler = verilenlerihazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.builder(
          itemBuilder: ((context, index) {
            return BurcItem(
              listelenenburc: butunburcler[index],
            );
          }),
          itemCount: butunburcler.length,
        ),
      ),
    );
  }

  List<burcler> verilenlerihazirla() {
    List<burcler> gecici = [];
  
    for (int i = 0; i < 12; i++) {
      var burcadi = Strings.BURC_ADLARI[i];
      var burctarixi = Strings.BURC_TARIHLERI[i];
      var burcdetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      var KBurc = Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      var BBurc = Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";
      burcler addBurc = burcler(burcadi, burctarixi, burcdetay, KBurc, BBurc);
      gecici.add(addBurc);
    }
    return gecici;
  }
}
