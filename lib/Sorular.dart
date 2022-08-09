import 'Soru.dart';

// class TestVeri{
//   List <Soru> soruBnakasi=[   ///bu kismi kaldirdik cunki getrer setter kullandik asagida
//     Soru(soruMetni:'bir sey duydugun zaman dogrulugunu arastir',soruYanit: true ),
//     Soru(soruMetni:'her nefis bir gun olumu tadacaktir',soruYanit: true ),
//     Soru(soruMetni:'cennet ucuz degil cehennem dahi luzumsuz degil',soruYanit: true ),
//     Soru(soruMetni:'murat minnaktir',soruYanit: false ),
//     Soru(soruMetni:'murat cukcukcudur',soruYanit: true ),
//     Soru(soruMetni:'selim cukcukcudur',soruYanit: false )
//
//   ];
// }

class TestVeri{

  int _sorularIndex=0;
  List <Soru> _soruBnakasi=[ //alt cizgi koyduk anlami disardan ulasilamaz
    Soru(soruMetni:'bir sey duydugun zaman dogrulugunu arastir',soruYanit: true ),
    Soru(soruMetni:'her nefis bir gun olumu tadacaktir',soruYanit: true ),
    Soru(soruMetni:'cennet ucuz degil cehennem dahi luzumsuz degil',soruYanit: true ),
    Soru(soruMetni:'murat minnaktir',soruYanit: false ),
    Soru(soruMetni:'murat cukcukcudur',soruYanit: true ),
    Soru(soruMetni:'selim cukcukcudur',soruYanit: false )

  ];


  String getSoruMetni(){
            return _soruBnakasi[_sorularIndex].soruMetni;


  }

  bool getSoruYaniti(){
          return _soruBnakasi[_sorularIndex].soruYanit;


  }


  void soruIndex(){

    if(_sorularIndex+1<_soruBnakasi.length){
    _sorularIndex++;}
  }

  bool sorularBittimi(){
    if(_sorularIndex+1>=_soruBnakasi.length) {
      return true;
    }else{
      return false;
    }


  }

  void testiSifirla(){

    _sorularIndex=0;
  }

}




