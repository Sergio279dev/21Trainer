import 'package:flutter_test/flutter_test.dart';
import 'dart:math';
import 'package:trainer21/juego/baraja.dart';
import 'package:trainer21/juego/carta.dart';

void main() {
  group('Pruebas de la clase Baraja', () {
    test('Una nueva baraja debe tener 52 cartas', () {
      final baraja = Baraja();
      final numeroDeCartas = baraja.cards.length;
      final cartasRestantes = baraja.remainingCards;
      expect(numeroDeCartas, 52);
      expect(cartasRestantes, 52);
    });

    test('una nueva baraja no está en el orden secuencial original', () {
      final cartasOrdenadas = <String>[];
      const palos = ['Corazones', 'Picas', 'Diamantes', 'Tréboles'];
      for (final palo in palos) {
        for (int valor = 1; valor <= 13; valor++) {
          cartasOrdenadas.add(Carta(palo, valor).toString());
        }
      }
      final stringOrdenado = cartasOrdenadas.join(',');
      final barajaBarajada = Baraja();
      final stringBarajado = barajaBarajada.cards.map((c) => c.toString()).join(',');
      expect(stringBarajado, isNot(equals(stringOrdenado)));
    });

    test('Una nueva baraja debe contener 52 cartas únicas', () {
      final baraja = Baraja();
      final cartasUnicas = baraja.cards.toSet();
      expect(cartasUnicas.length, 52);
    });

    test('dibujarCarta() debe sacar una carta y reducir el total a 51', () {
      final baraja = Baraja();
      final cartaDibujada = baraja.dibujarCarta();
      expect(cartaDibujada, isA<Carta>());
      expect(baraja.remainingCards, 51);
    });

    test('dibujarCarta() debe lanzar un StateError si la baraja está vacía', () {
      final baraja = Baraja();
      for (int i = 0; i < 52; i++) {
        baraja.dibujarCarta();
      }
      expect(baraja.isEmpty, isTrue);
      expect(() => baraja.dibujarCarta(), throwsA(isA<StateError>()));
    });

    test('toString() debe contener cartas clave de una baraja completa', () {
      final baraja = Baraja();
      final barajaComoString = baraja.toString();
      print('--- Contenido de la Baraja para Depuración ---');
      print(barajaComoString);
      print('-----------------------------------------');
      expect(barajaComoString.contains('A de Picas'), isTrue);
      expect(barajaComoString.contains('K de Corazones'), isTrue);
      expect(barajaComoString.contains('7 de Diamantes'), isTrue);
    });
  });
}
