import 'package:burc_rehberi/modullar/burc.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final burcler burcdetay;
  const BurcDetay({required this.burcdetay, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color _apprengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    appbartap();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          pinned: true,
          backgroundColor: _apprengi,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(widget.burcdetay.BurcAdi + "Burcu ve ozelikleri"),
            centerTitle: true,
            background: Image.asset(
              "images/" + widget.burcdetay.burcaboyuk,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                widget.burcdetay.Detayi,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
        ),
      ],
    ));
  }

  void appbartap() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage("images/${widget.burcdetay.burcaboyuk}"),
    );
    setState(() {});
    _apprengi = _generator.vibrantColor!.color;
  }
}
