import 'dart:io';

void main(List<String> arguments) {
  print('Welcome to Manual do App - Task 01 app!');
  print('What is your name?');
  String name = getUserName();
  printWelcomeToDarWorld(name);
}

String getUserName() {
  String? name = stdin.readLineSync();
  String trimmedName = name?.trim() ?? '';
  if (trimmedName.isEmpty) {
    print('Wrong input! Please, try again!');
    return getUserName();
  } else {
    return trimmedName;
  }
}

void printWelcomeToDarWorld(String name) {
  List<String> temp = [
    "Hello $name!",
    "Welcome",
    "to",
    "the",
    "Wonderful",
    "World",
    "of",
    "Dart!"
  ];
  print('');
  for (var item in temp) {
    print(item);
  }
}
