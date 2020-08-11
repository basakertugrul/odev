import 'Avm.dart';

class Clb {
  var kipa = Avm('kipa', false, true, true, false, false, 40);
  var optimum = Avm('optimum', true, false, true, true, true, 25);
  var palmiye = Avm('palmiye', false, false, true, true, false, 35);
  var agora = Avm('agora', true, true, true, true, false, 30);

  var olmayanlar = new List(5);
  int sayac;

  void karsilastirma(Avm x, bool b, bool s, bool k, bool m, bool f) {
    sayac = 0;
    var users = new List(5);
    users[0] = b;
    users[1] = s;
    users[2] = k;
    users[3] = m;
    users[4] = f;

    var avms = new List(5);
    avms[0] = x.burgerKing;
    avms[1] = x.sinema;
    avms[2] = x.koton;
    avms[3] = x.mavi;
    avms[4] = x.fenerium;

    for (int i = 0; i < 5; i++) {
      if (users[i] == true && avms[i] == false) {
        olmayanlar[sayac] = i;
        sayac++;
      }
    }
    x.siralama = sayac;
  }

  void chooser(bool b, bool s, bool k, bool m, bool f, int konumkullanici) {
// choosera al sıralamadan sonra yazdır
    /*if (sayac == 0) {
      print("eslesti");
    } else {
      
      for (int j = 0; j < sayac; j++) {
        if (olmayanlar[j] == 0) {
          print("Burger King yok");
        }
        if (olmayanlar[j] == 1) {
          print("Sinema yok");
        }
        if (olmayanlar[j] == 2) {
          print("Koton yok");
        }
        if (olmayanlar[j] == 3) {
          print("Mavi yok");
        }
        if (olmayanlar[j] == 4) {
          print("Fenerium yok");
        }
      }
    }*/

    karsilastirma(kipa, b, s, k, m, f);
    karsilastirma(optimum, b, s, k, m, f);
    karsilastirma(palmiye, b, s, k, m, f);
    karsilastirma(agora, b, s, k, m, f);

    List<Avm> sira = [kipa, optimum, palmiye, agora];
    for (int p = 0; p < 4; p++) {
      print(sira[p].ad);
    }

    sira.sort((a, b) => a.siralama.compareTo(b.siralama));

    for (int p = 0; p < 4; p++) {
      print(sira[p].ad);
      print(sira[p].mesafe(konumkullanici));
    }
    //for (int p = 0; p < 4; p++) {
    //  if (sira[p] == sira[p + 1]) {}
    // }
  }
}
