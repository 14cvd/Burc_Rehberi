import 'package:burc_rehberi/burcDetay.dart';
import 'package:burc_rehberi/modullar/burc.dart';
import 'package:flutter/material.dart';

class BurcItem extends StatelessWidget {
  final burcler listelenenburc;
  const BurcItem({required this.listelenenburc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var MyTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BurcDetay(burcdetay: listelenenburc),
                ),
              );
            },
            leading: Image.asset(
              "images/" + listelenenburc.burcbalaca,
            ),
            title: Text(
              listelenenburc.BurcAdi,
              style: MyTextStyle.headline5,
            ),
            subtitle: Text(
              listelenenburc.BurcTarixi,
              style: MyTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
