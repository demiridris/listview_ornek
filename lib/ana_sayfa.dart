import 'package:flutter/material.dart';
import 'package:listview_ornek/sehir.dart';

class AnaSayfa extends StatelessWidget {

 
  AnaSayfa({super.key});
 
final List<Sehir> _sehirler = [
    Sehir("istanbul", 34, 15000000),
    Sehir("ankara", 34, 15000000),
    Sehir("izmir", 34, 15000000),
    Sehir("bursa", 34, 15000000),
    Sehir("konya", 34, 15000000),
  ]; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         
        ),

        body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: _sehirler.length,
          itemBuilder: _listeOlustur,
        ),
      ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
   Widget _listeOlustur(BuildContext context, int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_sehirler[0].isim),
        SizedBox(
          height: 14,
        ),
        Text(_sehirler[0].nufus.toString()),
        SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
