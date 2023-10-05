// Activity 1
// ==========
// Agafeu una llista, per exemple aquesta:
// a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
// i escriviu un programa que imprimeixi tots els elements de la llista que siguin inferiors a 5.

void start() {
  var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  print('Activity 1');
  print('===========');
  for (var value in a) {
    if (value < 5) {
      print(value);
    }
  }
}
