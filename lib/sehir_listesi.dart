import 'package:sehirim/sehir.dart';
import 'package:sehirim/utils/strings.dart';
import 'package:flutter/material.dart';

class sehirListesi extends StatelessWidget {
   static List<sehir> tumsehirler;

  @override
  Widget build(BuildContext context) {
    tumsehirler = verileriAl();
    return Scaffold(
      appBar: AppBar(
        title: Text("Geziyorum Öğreniyorum"),
      ),
      body: listeYaratici(),
    );
  }

  List<sehir> verileriAl() {
    List<sehir> gecici = [];

    for (int m = 0; m < 12; m++) {
      String geciciBuyukResim;
      String geciciKucukResim;

      geciciKucukResim = Strings.Gezilecek_yerler[m].toLowerCase() + "${m + 1}.png";
      geciciBuyukResim =
          Strings.Gezilecek_yerler[m].toLowerCase() + "_buyuk${m + 1}.png";


      gecici.add(sehir(
          Strings.Gezilecek_yerler[m],
          Strings.sehir_bolge[m],
          Strings.sehir_OZELLIKLERI[m],
          geciciBuyukResim,
          geciciKucukResim));
    }
    return gecici;
  }

  Widget listeYaratici() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return satirDuzeni(context, index);
      },
      itemCount: tumsehirler.length,
    );
  }

  Widget satirDuzeni(BuildContext context, indeks) {
    sehir oAnkiElelman = tumsehirler[indeks];
    return Card(
      elevation: 2,
      child: ListTile(
        onTap: ()=> Navigator.pushNamed(context, "/detaysehir/$indeks"),
        title: Text(oAnkiElelman.Adi),
        subtitle: Text(oAnkiElelman.Tarihi),
        leading: Image.asset("images/" + oAnkiElelman.kucukResim),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
