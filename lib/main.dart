import 'dart:io';

class Avm {
  bool burgerKing;
  bool sinema;
  bool koton;
  bool mavi;
  bool fenerium;

  Avm(bool burgerKing, bool sinema, bool koton, bool mavi, bool fenerium) {
    this.burgerKing = burgerKing;
    this.sinema = sinema;
    this.koton = koton;
    this.mavi = mavi;
    this.fenerium = fenerium;
  }

  int mesafe(int konum, int avmKonumu) {
    int k = konum - avmKonumu;
    if (k < 0) {
      k = 0 - k;
    }
    return k;
  }
}

class Clb {
  var kipa = Avm(false, true, true, false, false);
  var optimum = Avm(true, false, true, true, true);
  var palmiye = Avm(false, false, true, true, false);
  var agora = Avm(true, true, true, true, false);

  void karsilastirma(Avm x, bool b, bool s, bool k, bool m, bool f) {
    var users = new List(5);
    users[0] = b;
    users[1] = s;
    users[2] = k;
    users[3] = m;
    users[3] = f;

    var avms = new List(5);
    avms[0] = x.burgerKing;
    avms[1] = x.sinema;
    avms[2] = x.koton;
    avms[3] = x.mavi;
    avms[3] = x.fenerium;

    for(int i=0;i<5;i++){
      if(users[i]== true ){
      if(avms[i]==false){
      
      }

      }
    }








    /*
    int sayac = 0;
    if (x.burgerKing == b) {
      sayac++;
    }
    if (x.sinema == s) {
      sayac++;
    }
    if (x.koton == k) {
      sayac++;
    }
    if (x.mavi == m) {
      sayac++;
    }
    if (x.fenerium == f) {
      sayac++;
    }
    return sayac;
  }

  void chooser(bool b, bool s, bool k, bool m, bool f) {
    var lst = new List(4);

    lst[0] = karsilastirma(kipa, b, s, k, m, f);
    lst[1] = karsilastirma(optimum, b, s, k, m, f);
    lst[2] = karsilastirma(palmiye, b, s, k, m, f);
    lst[3] = karsilastirma(agora, b, s, k, m, f);
  }
}
*/}
void main() {
  print(
      " Lütfen gitmek istediğiniz AVM'de aşağıdaki markalar bulunsun istiyorsanız 1'e, farketmez ise herhangi bir tuşa basın.");
  //sleep(Duration(seconds: 3));
  print(" Burger King");
  bool burgerno;
  String burger = stdin.readLineSync();
  if (burger == "1") {
    burgerno = true;
  } else {
    burgerno = false;
  }

  print(" Sinema");
  bool sinemano;
  String sinema = stdin.readLineSync();
  if (sinema == "1") {
    sinemano = true;
  } else {
    sinemano = false;
  }

  print(" Koton");
  bool kotonno;
  String koton = stdin.readLineSync();
  if (koton == "1") {
    kotonno = true;
  } else {
    kotonno = false;
  }

  print(" Mavi");
  bool mavino;
  String mavi = stdin.readLineSync();
  if (mavi == "1") {
    mavino = true;
  } else {
    mavino = false;
  }

  print(" Fenerium");
  bool fenerno;
  String fener = stdin.readLineSync();
  if (fener == "1") {
    fenerno = true;
  } else {
    fenerno = false;
  }

  var x = Clb();
  //x.chooser(burgerno, sinemano, kotonno, mavino, fenerno);
}
  