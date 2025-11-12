import 'dart:math';

import 'carta.dart';
import 'baraja.dart';

class Zapato {
  final int numeroBarajas;
  final double penetracion;
  final List<Carta> _cartas = [];
  int _cartasUsadas =0;

  Zapato({this.numeroBarajas=1, this.penetracion=0.75}){
    _construirZapato();
  }
  void _construirZapato(){
    _cartas.clear();
    for (int i = 0; i < numeroBarajas; i++) {
      var barajaTemp = Baraja();
      _cartas.addAll(barajaTemp.cards);
    }
    _cartas.shuffle(Random());
    _cartasUsadas=0;
  }
  bool necesitaBarajar(){
    int totalCartas=_cartas.length;
    int cartaDeCorte=(totalCartas*penetracion).floor();
    return _cartasUsadas>=cartaDeCorte;
  }
  Carta repartirCarta(){
    if (necesitaBarajar()){
      print("Punto de corte alcanzado. Barajando de nuevo");
      _construirZapato();
    }
    return _cartas[_cartasUsadas++];

  }
}