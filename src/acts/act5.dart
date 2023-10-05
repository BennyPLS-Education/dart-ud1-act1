// Activity 5
// ==========
// Suposem que se us proporciona una llista desada en una variable:
// a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
// Escriviu el codi que agafi aquesta llista i en faci una
// nova que inclogui només els elements parells d’aquesta llista.

import 'dart:io';

void start() {
  var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  a.where((element) => element % 2 == 0);

  print('Activity 5');
  print('===========');

  for (var value in a) {
    stdout.write('$value ');
  }
}
