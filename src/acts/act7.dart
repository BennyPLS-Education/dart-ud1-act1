// Activity 7
// ==========
// Escriviu un programa (mitjançant funcions!)
// Que donada una cadena llarga que contingui
// diverses paraules (en format string), torni a
// imprimir a l'usuari la mateixa cadena, però amb
// les paraules en ordre invers. Per exemple:

// 	El meu nom és Jaume
// 	Jaume és nom meu El

import 'dart:io';

void start() {
  print('Activity 7');
  print('===========');

  String sentence = userInput();

  var words = sentence.split(' ').map((element) {
    return element.split('').reversed.join('');
  }).toList();

  print(words.join(' '));
}

String userInput() {
  String? sentence;

  while (true) {
    stdout.write('Enter a sentence: ');
    sentence = stdin.readLineSync();

    if (sentence == null) {
      print('You must enter a sentence');
    } else {
      break;
    }
  }
  return sentence;
}
