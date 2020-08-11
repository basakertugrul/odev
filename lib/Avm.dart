class Avm {
  bool burgerKing;
  bool sinema;
  bool koton;
  bool mavi;
  bool fenerium;

  String ad;
  int siralama;
  int konum;

  Avm(String ad, bool burgerKing, bool sinema, bool koton, bool mavi,
      bool fenerium, int konum) {
    this.burgerKing = burgerKing;
    this.sinema = sinema;
    this.koton = koton;
    this.mavi = mavi;
    this.fenerium = fenerium;
    this.ad = ad;
    this.konum = konum;
  }

  int mesafe(int b) {
    int k = b - this.konum;
    if (k < 0) {
      k = 0 - k;
    }
    return k;
  }

  List<int> olmayanlar = [-1, -1, -1, -1, -1];
}
