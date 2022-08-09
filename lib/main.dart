import 'package:bilgi_testi/Sorular.dart';
import 'package:flutter/material.dart';

import 'Soru.dart';
import 'constants.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(

            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: SoruSayfasi(),
                ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {

  List <Widget> secimler=[ ];
  // List<String> sorular=['bir sey duydugun zaman dogrulugunu arastir',
  // 'her nefis bir gun olumu tadacaktir',
  // 'cennet ucuz degil cehennem dahi luzumsuz degil',
  // 'murat minnaktir',
  // 'murat cukcukcudur',
  //   'selim cukcukcudur'];
  // List<bool> yanitlar=[true,true,true,false,true,false]; asagidaki liste teknigini kullandigimiz icin bu kismi kaldirdik

TestVeri test_1=TestVeri();

void buttonFonksiyonu(bool secilenButon){

  if(test_1.sorularBittimi()==true){
    //alert diolag goster
    showDialog(
        context: context,
        builder: (BuildContext context) => new AlertDialog(
          title: new Text('Bravo test bitti'),
          content: new Text('BASA DON'),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    test_1.testiSifirla();//indexi sifirla
                    secimler=[];//iconllalri sil (Secimleri sifirla
                  });
                })
          ],
        ));

    /////////
  }
  else{
    setState(() {

     test_1.getSoruYaniti()==secilenButon?secimler.add(kDogruIcon):secimler.add(kYanlisIcon);

      // sorularIndex++;
      test_1.soruIndex();
      // secimler.add(kYanlisIcon);
    });

  }
}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
            alignment: WrapAlignment.center,
          children:secimler //ilk basta row  kullandim alta gecebiliyo wrap ile

          ,),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                           // bool dogruYanit=yanitlar[sorularIndex];

                                 buttonFonksiyonu(false);

                          },
                        ))),

                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                           buttonFonksiyonu(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}




//const Icon dogruIcon=Icon(Icons.mood,color: Colors.green,);constn filena koydum
//const Icon yanlisIcon=Icon(Icons.mood_bad,color: Colors.red,);