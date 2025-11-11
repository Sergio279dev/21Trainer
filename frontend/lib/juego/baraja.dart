import 'carta.dart';

class Baraja {
    final List <Carta> _cartas = [];
    final palo = ['corazones', 'espadas', 'diamantes', 'treboles'];

    Baraja ({int numeroBarajas =1}){
    for (int d = 0; d < numeroBarajas; d++) {
      for (var suit in palo) {
        for (int number = 1; number <= 13; number++) {
          _cartas.add(Carta(suit, number));
        }
      }
    }
     _cartas.shuffle();
    }
    
     Carta dibujarCarta(){
      if (_cartas.isEmpty) {
        throw Exception("No hay más cartas en la baraja");

      }
      return _cartas.removeLast();
     }
     bool get isEmpty => _cartas.isEmpty;

     int get remainingCards => _cartas.length;

     List<Carta> get cards => List.unmodifiable(_cartas);

     
}

