// Activity 3
// ==========
// Donada una cadena de texte,
// imprimiu si aquesta cadena és un palíndrom o no.

void start() {

  print('Activity 3');
  print('===========');

  isPalindrome('ana');
}

void isPalindrome(String input) {
  var reverser = input.split('').reversed.join('');

  if (input == reverser) {
    print("It's a palindrome");
  } else {
    print("It's not a palindrome");
  }
}