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
    users[4] = f;

    var avms = new List(5);
    avms[0] = x.burgerKing;
    avms[1] = x.sinema;
    avms[2] = x.koton;
    avms[3] = x.mavi;
    avms[4] = x.fenerium;

    var olmayanlar = new List(5);
    int sayac = 0;

    for (int i = 0; i < 5; i++) {
      if (users[i] == true) {
        if (avms[i] == false) {
          olmayanlar[sayac] = i;
          sayac++;
        }
      }
    }
    if (sayac == 0) {
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
        if (olmayanlar[j] == 0) {
          print("Fenerium yok");
        }
      }
    }
  }

  void chooser(bool b, bool s, bool k, bool m, bool f) {
    print("Kipa");
    karsilastirma(kipa, b, s, k, m, f);
    print("Optimum");
    karsilastirma(optimum, b, s, k, m, f);
    print("Palmiye");
    karsilastirma(palmiye, b, s, k, m, f);
    print("Fenerium");
    karsilastirma(agora, b, s, k, m, f);
  }
}
