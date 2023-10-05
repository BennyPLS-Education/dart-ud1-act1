// Activity 6
// ==========
// Realitza un programa que generi un nombre
// aleatori entre 1 i 100, i seguidament comprovi
// si aquest nombre és primer o no. Pots fer servir
// la llibreria import 'dart:math';

import 'dart:math';

void start() {
  print('Activity 6');
  print('===========');

  var random = Random();
  var number = random.nextInt(100);

  print('Random number: $number');

  if (isPrime(number)) {
    print('It\'s a prime number');
  } else {
    print('It\'s not a prime number');
  }

}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (var i = 2; i < sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}