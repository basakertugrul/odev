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

  int siralama;
}
