// Activity 8
// ==========
// Escriu un programa que donada una longitud
// (expressada numericament int), generi una
// contrasenya segura de la longitud esmentada
// totalment aleatòria amb caràcters alfanumèrics.

import 'dart:io';
import 'dart:math';

void start() {
  print('Activity 8');
  print('===========');

  var length = userInput();
  var password = generatePassword(length);

  print('Your password is: $password');
}

int userInput() {
  int? length;

  while (true) {
    print('Enter a length: ');
    length = int.tryParse(stdin.readLineSync()!);

    if (length == null) {
      print('You must enter a number');
    } else {
      break;
    }
  }
  return length;
}

String generatePassword(int length) {
  var random = Random();
  var password = '';

  for (var i = 0; i < length; i++) {
    var randomChar = random.nextInt(2);
    var randomNum = random.nextInt(10);
    var randomLetter = String.fromCharCode(random.nextInt(26) + 97);

    if (randomChar == 0) {
      password += randomNum.toString();
    } else {
      password += randomLetter;
    }
  }

  return password;
}
