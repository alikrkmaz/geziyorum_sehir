import 'package:flutter/material.dart';
import 'sehir_detay.dart';
import 'sehir_listesi.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "şehir Uygulaması",
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      initialRoute: "/",
      routes: {"/": (context) => sehirListesi()},
      onGenerateRoute: (RouteSettings settings) {
        List<String> yollar = settings.name
            .split("/");

        if (yollar[1] == "detaysehir") {
          return MaterialPageRoute(builder: (context) => sehirDetay(int.parse(yollar[2])));
        }
       return null ;
      },
    );
  }
}
