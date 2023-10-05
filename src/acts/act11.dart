// Activity 10
// ==========
// Realitza una funció que retorni un llistat de “n”
// nombres primers on “n” ens ve donat per paràmetre.

import 'dart:math';

void start() {
  print('Activity 10');
  print('===========');

  var primes = getPrimes(10);
  print(primes);
}

List<int> getPrimes(int limit) {
  var primes = <int>[];

  for (var i = 2; i < limit; i++) {
    if (isPrime(i)) {
      primes.add(i);
    }
  }

  return primes;
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (var i = 2; i <= sqrt(number).ceil(); i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}