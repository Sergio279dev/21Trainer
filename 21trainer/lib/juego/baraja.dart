import 'dart:math';

import 'carta.dart';

class Baraja {
  final List <Carta> _cartas = [];

  List<Carta> get cards => List.unmodifiable(_cartas);

  Baraja() {
    const palos = ['Corazones', 'Picas', 'Diamantes', 'Tréboles'];

    // Bucle para crear una baraja estándar de 52 cartas
    for (final palo in palos) {
      for (int valor = 1; valor <= 13; valor++) {
        _cartas.add(Carta(palo, valor));
      }
    }
    _cartas.shuffle(Random());
  }


  Carta dibujarCarta() {
    if (_cartas.isEmpty) {
      throw StateError("No hay más cartas en la baraja");
    }
    return _cartas.removeLast();
  }

  bool get isEmpty => _cartas.isEmpty;

  int get remainingCards => _cartas.length;


  @override
  String toString() {
    // Une la representación de cada carta con un salto de línea.
    return cards.join('\n');
  }

}