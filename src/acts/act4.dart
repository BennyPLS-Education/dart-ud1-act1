// Activity 4
// ==========
// Implementa una funció que pren com a entrada
// tres variables i retorna la més gran de les tres.
// Feu això sense utilitzar la funció Dart max().
//
// L’objectiu d’aquest exercici és pensar en alguns
// elements interns que Dart normalment té cura de nosaltres.
// Tot el que necessiteu són algunes variables i declaracions if!
//
// Altres exemples: https://www.geeksforgeeks.org/dart-finding-minimum-and-maximum-value-in-a-list/

void start() {
  print('Activity 4');
  print('===========');

  var numberOne = 1;
  var numberTwo = 2;
  var numberThree = 3;

  print('The biggest number is ${max(numberOne, numberTwo, numberThree)}');
}

int max(int numberOne, int numberTwo, int numberThree) {
  List<int> numbers = [numberOne, numberTwo, numberThree];

  numbers.sort();

  return numbers.last;
}