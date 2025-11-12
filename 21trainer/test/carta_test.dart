import 'package:flutter_test/flutter_test.dart';
import 'package:trainer21/juego/carta.dart';

void main() {
  group('Pruebas de la clase Carta', () {
    test('Una carta debe crearse correctamente con palo y valor', () {
      final carta = Carta('Corazones', 5);
      expect(carta.palo, 'Corazones');
      expect(carta.valor, 5);
      print('--- Prueba 1: Creación de Carta ---');
      print('Palo: ${carta.palo}');
      print('Valor: ${carta.valor}');
      print('-----------------------------------');
    });

    test('El getter rango debe devolver el rango correcto', () {
      final as = Carta('Picas', 1);
      final dos = Carta('Diamantes', 2);
      final jack = Carta('Tréboles', 11);
      final queen = Carta('Corazones', 12);
      final king = Carta('Picas', 13);
      expect(as.rango, 'A');
      expect(dos.rango, '2');
      expect(jack.rango, 'J');
      expect(queen.rango, 'Q');
      expect(king.rango, 'K');
      print('--- Prueba 2: Getter Rango ---');
      print('As: ${as.rango}');
      print('Dos: ${dos.rango}');
      print('Jack: ${jack.rango}');
      print('Queen: ${queen.rango}');
      print('King: ${king.rango}');
      print('------------------------------');
    });

    test('El getter valorBlackjack debe devolver el valor correcto para Blackjack', () {
      final as = Carta('Picas', 1);
      final cinco = Carta('Diamantes', 5);
      final diez = Carta('Tréboles', 10);
      final jack = Carta('Corazones', 11);
      final queen = Carta('Picas', 12);
      final king = Carta('Diamantes', 13);
      expect(as.valorBlackjack, 1);
      expect(cinco.valorBlackjack, 5);
      expect(diez.valorBlackjack, 10);
      expect(jack.valorBlackjack, 10);
      expect(queen.valorBlackjack, 10);
      expect(king.valorBlackjack, 10);
      print('--- Prueba 3: Getter Valor Blackjack ---');
      print('As: ${as.valorBlackjack}');
      print('Cinco: ${cinco.valorBlackjack}');
      print('Diez: ${diez.valorBlackjack}');
      print('Jack: ${jack.valorBlackjack}');
      print('Queen: ${queen.valorBlackjack}');
      print('King: ${king.valorBlackjack}');
      print('---------------------------------------');
    });

    test('toString() debe devolver la representación correcta de la carta', () {
      final carta = Carta('Corazones', 5);
      final stringRepresentation = carta.toString();
      expect(stringRepresentation, '5 de Corazones (value: 5)');
      print('--- Prueba 4: Método toString ---');
      print('Representación: $stringRepresentation');
      print('----------------------------------');
    });

    test('toString() para As debe mostrar correctamente', () {
      final as = Carta('Picas', 1);
      final stringRepresentation = as.toString();
      expect(stringRepresentation, 'A de Picas (value: 1)');
      print('--- Prueba 5: toString con As ---');
      print('Representación: $stringRepresentation');
      print('---------------------------------');
    });

    test('toString() para figuras debe mostrar correctamente', () {
      final jack = Carta('Tréboles', 11);
      final queen = Carta('Diamantes', 12);
      final king = Carta('Corazones', 13);
      expect(jack.toString(), 'J de Tréboles (value: 10)');
      expect(queen.toString(), 'Q de Diamantes (value: 10)');
      expect(king.toString(), 'K de Corazones (value: 10)');
      print('--- Prueba 6: toString con Figuras ---');
      print('Jack: ${jack.toString()}');
      print('Queen: ${queen.toString()}');
      print('King: ${king.toString()}');
      print('-------------------------------------');
    });
  });
}
