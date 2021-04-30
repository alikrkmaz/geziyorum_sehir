import 'package:flutter/material.dart';
import 'sehir_listesi.dart';


class sehirDetay extends StatefulWidget {
  int sehirNO;
  sehirDetay(this.sehirNO);
  Color baskinRenk;



  @override
  _sehirDetayState createState() => _sehirDetayState();
}
class _sehirDetayState extends State<sehirDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            primary: true,
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(

              ),
              centerTitle: true,
              title: Text(sehirListesi.tumsehirler[widget.sehirNO].Adi),
            ),

          SliverToBoxAdapter(
            child: Text(
              sehirListesi.tumsehirler[widget.sehirNO].Detayi,
              style: TextStyle(fontSize: 21),
            ),
          )
        ],
      ),
    );
  }
}
