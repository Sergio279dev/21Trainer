class Carta {
  final String palo;
  final int valor;  // Este valor puede ir del 1 al 13. Surge de enumerar las cartas del 1 al 13 (11,12,13=J,Q,K)

  Carta(this.palo, this.valor);

  String get rango {
    switch (valor) {
      case 1:
        return 'A';
      case 11:
        return 'J';
      case 12:
        return 'Q';
      case 13:
        return 'K';
      default:
        return valor.toString();
    }
  }

  //Valor real en Blackjack
  int get valorBlackjack {
    if (valor == 1) {
      return 1;
    } else if (valor > 10) {
      return 10;
    } else {
      return valor;
    }
  }

  @override
  String toString() {
    return '$rango de $palo (value: $valorBlackjack)';
  }
}
