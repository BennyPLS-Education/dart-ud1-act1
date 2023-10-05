// Activity 9
// ==========
// Realitza un programa que donat un nombre,
// pinti una cuadrícula d’aquesta grandària.

import 'dart:io';

void start() {
  int nombre = userInput();

  String linesLayers = ' --- ' * nombre;
  String middleLayers = '|' + '   |' * nombre;

  for (var i = 0; i < nombre; i++) {
    print(linesLayers);
    print(middleLayers);
  }
  
  print(linesLayers);
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
