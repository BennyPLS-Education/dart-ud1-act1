import 'dart:io';
import 'dart:core';

import 'acts/act1.dart' as act1;
import 'acts/act2.dart' as act2;
import 'acts/act3.dart' as act3;
import 'acts/act4.dart' as act4;
import 'acts/act5.dart' as act5;
import 'acts/act6.dart' as act6;
import 'acts/act7.dart' as act7;
import 'acts/act8.dart' as act8;
import 'acts/act9.dart' as act9;
import 'acts/act10.dart' as act10;
import 'acts/act11.dart' as act11;

void main(List<String> arguments) {
  int option;
  var choices = [
    '0. Sortir',
    '1. Exercici 1',
    '2. Exercici 2',
    '3. Exercici 3',
    '4. Exercici 4',
    '5. Exercici 5',
    '6. Exercici 6',
    '7. Exercici 7',
    '8. Exercici 8',
    '9. Exercici 9',
    '10. Exercici 10',
    '11. Exercici 11'
  ];

  print("-------------------------");
  print("Selecciona una activitat:");
  print("-------------------------");

  choices.forEach((choice) => print(choice));

  print("-------------------------");

  option = getNumber();

  if (option != 0) {
    switch (option) {
      case 1:
        act1.start();
        stdin.readLineSync();
        break;

      case 2:
        act2.start();
        stdin.readLineSync();
        break;

      case 3:
        act3.start();
        stdin.readLineSync();
        break;

      case 4:
        act4.start();
        stdin.readLineSync();
        break;

      case 5:
        act5.start();
        stdin.readLineSync();
        break;

      case 6:
        act6.start();
        stdin.readLineSync();
        break;

      case 7:
        act7.start();
        stdin.readLineSync();
        break;

      case 8:
        act8.start();
        stdin.readLineSync();
        break;

      case 9:
        act9.start();
        stdin.readLineSync();
        break;

      case 10:
        act10.start();
        stdin.readLineSync();
        break;

      case 11:
        act11.start();
        stdin.readLineSync();
        break;

      default:
        print("Opció no vàlida");
        break;
    }
    main(arguments);
  } else {
    print("Adeu!");
  }
}

int getNumber() {
  while (true) {
    print("Opció: ");
    var line = stdin.readLineSync();
    try {
      return int.parse(line!);
    } catch (e) {
      print("Introdueix un número vàlid");
    }
  }
}
