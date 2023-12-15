import 'dart:io';

class Player {
  String name;
  String playerXOrO;
  int numberOfWins = 0;

  Player(this.name, this.playerXOrO);
}

void text() {
  print("welcome to Tic-Tac-Toe Game");
  print('1. start game');
  print("0. exit");
}

void Player1(Player Player_1) {
  print("player one");
  print("please enter name if you want if not, enter 1");
  String name = stdin.readLineSync()!;
  if (name == '1')
    Player_1.name = 'player 1';
  else
    Player_1.name = name;
  print(
      'please enter want X or O and player two by defult take the second value');
  String XOrO = stdin.readLineSync()!;
  while (XOrO != 'X' && XOrO != "x" && XOrO != "O" && XOrO != 'o') {
    print("that is not valid input ,please enter valid value \' x or o\'");
    XOrO = stdin.readLineSync()!;
  }
  Player_1.playerXOrO = XOrO.toLowerCase();
}

void Player2(Player Player_2, Player Player_1) {
  print("player two");
  print("please enter name if you want if not, enter 1");
  String name = stdin.readLineSync()!;
  if (name == '1')
    Player_2.name = 'player 2';
  else
    Player_2.name = name;
  Player_2.playerXOrO = Player_1.playerXOrO == 'x' ? 'o' : 'x';
  print('you have ${Player_2.playerXOrO} value');
}

void text2(Player Player_1, Player Player_2) {
  print(
      'palyer one information : ${Player_1.name} , value : ${Player_1.playerXOrO} , number of wins : ${Player_1.numberOfWins}');
  print(
      'palyer two information : ${Player_2.name} , value : ${Player_2.playerXOrO} , number of wins : ${Player_2.numberOfWins}');
}

void X_OBorad(List<String> box) {
  print(' ${box[0]} | ${box[1]} | ${box[2]}');
  print('---+---+---');
  print(' ${box[3]} | ${box[4]} | ${box[5]}');
  print('---+---+---');
  print(' ${box[6]} | ${box[7]} | ${box[8]}');
}

int Game(Player Player_1, Player Player_2) {
  List<String> box = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  List<int> valid_box = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  X_OBorad(box);
  print('${Player_1.name} enter number of box you choese');
  int box_num = int.parse(stdin.readLineSync()!);

  while (!valid_box.contains(box_num)) {
    if (box_num < 1 || box_num > 9) {
      print('pleases enter box number between 1 - 9 and that is will be empty');
      box_num = int.parse(stdin.readLineSync()!);
    } else {
      print('enter number of empty box');
      box_num = int.parse(stdin.readLineSync()!);
    }
  }
  box[box_num - 1] = Player_1.playerXOrO;
  valid_box.remove(box_num);
  X_OBorad(box);
  for (int i = 0; i < 4; i++) {
    print('${Player_2.name} enter number of box you choese');
    box_num = int.parse(stdin.readLineSync()!);
    while (!valid_box.contains(box_num)) {
      if (box_num < 1 || box_num > 9) {
        print(
            'pleases enter box number between 1 - 9 and that is will be empty');
        box_num = int.parse(stdin.readLineSync()!);
      } else {
        print('enter number of empty box');
        box_num = int.parse(stdin.readLineSync()!);
      }
    }
    box[box_num - 1] = Player_2.playerXOrO;
    valid_box.remove(box_num);
    X_OBorad(box);
    if ((box[0] == Player_2.playerXOrO &&
            box[1] == Player_2.playerXOrO &&
            box[2] == Player_2.playerXOrO) ||
        (box[3] == Player_2.playerXOrO &&
            box[4] == Player_2.playerXOrO &&
            box[5] == Player_2.playerXOrO) ||
        (box[6] == Player_2.playerXOrO &&
            box[7] == Player_2.playerXOrO &&
            box[8] == Player_2.playerXOrO) ||
        (box[0] == Player_2.playerXOrO &&
            box[3] == Player_2.playerXOrO &&
            box[6] == Player_2.playerXOrO) ||
        (box[1] == Player_2.playerXOrO &&
            box[4] == Player_2.playerXOrO &&
            box[7] == Player_2.playerXOrO) ||
        (box[2] == Player_2.playerXOrO &&
            box[5] == Player_2.playerXOrO &&
            box[8] == Player_2.playerXOrO) ||
        (box[0] == Player_2.playerXOrO &&
            box[4] == Player_2.playerXOrO &&
            box[8] == Player_2.playerXOrO) ||
        (box[2] == Player_2.playerXOrO &&
            box[4] == Player_2.playerXOrO &&
            box[6] == Player_2.playerXOrO)) {
      return 2;
    }

    print('${Player_1.name} enter number of box you choese');
    box_num = int.parse(stdin.readLineSync()!);
    while (!valid_box.contains(box_num)) {
      if (box_num < 1 || box_num > 9) {
        print(
            'pleases enter box number between 1 - 9 and that is will be empty');
        box_num = int.parse(stdin.readLineSync()!);
      } else {
        print('enter number of empty box');
        box_num = int.parse(stdin.readLineSync()!);
      }
    }
    box[box_num - 1] = Player_1.playerXOrO;
    valid_box.remove(box_num);
    X_OBorad(box);
    if ((box[0] == Player_1.playerXOrO &&
            box[1] == Player_1.playerXOrO &&
            box[2] == Player_1.playerXOrO) ||
        (box[3] == Player_1.playerXOrO &&
            box[4] == Player_1.playerXOrO &&
            box[5] == Player_1.playerXOrO) ||
        (box[6] == Player_1.playerXOrO &&
            box[7] == Player_1.playerXOrO &&
            box[8] == Player_1.playerXOrO) ||
        (box[0] == Player_1.playerXOrO &&
            box[3] == Player_1.playerXOrO &&
            box[6] == Player_1.playerXOrO) ||
        (box[1] == Player_1.playerXOrO &&
            box[4] == Player_1.playerXOrO &&
            box[7] == Player_1.playerXOrO) ||
        (box[2] == Player_1.playerXOrO &&
            box[5] == Player_1.playerXOrO &&
            box[8] == Player_1.playerXOrO) ||
        (box[0] == Player_1.playerXOrO &&
            box[4] == Player_1.playerXOrO &&
            box[8] == Player_1.playerXOrO) ||
        (box[2] == Player_1.playerXOrO &&
            box[4] == Player_1.playerXOrO &&
            box[6] == Player_1.playerXOrO)) {
      return 1;
    }
  }

  return 0;
}

void how_win(Player Player_1, Player Player_2, int win) {
  if (win == 0) {
    print("Draw");
  } else if (win == 1) {
    print('${Player_1.name} win');
    Player_1.numberOfWins++;
  } else if (win == 2) {
    print('${Player_2.name} win');
    Player_2.numberOfWins++;
  }

  print('the result is :');
  print(
      '${Player_1.name} : ${Player_1.numberOfWins} , ${Player_2.name} : ${Player_2.numberOfWins}');
}

void text3() {
  print('1. continue game');
  print('2. restrat game');
  print('0.exit');
}

void main() {
  text();
  int choese = int.parse(stdin.readLineSync()!);
  while (choese != 0 && choese != 1) {
    print('invalid input ,plalese enter 1 or 0');
    int choese = int.parse(stdin.readLineSync()!);
  }

  if (choese == 1) {
    Player Player_1 = new Player('', ''), Player_2 = new Player('', '');
    Player1(Player_1);
    Player2(Player_2, Player_1);
    text2(Player_1, Player_2);
    int win = Game(Player_1, Player_2);
    how_win(Player_1, Player_2, win);
    text3();
    choese = int.parse(stdin.readLineSync()!);
    while (choese != 0 && choese != 1 && choese != 2) {
      print('invalid input ,plalese enter 1 , 2 or 0');
      choese = int.parse(stdin.readLineSync()!);
    }
    while (choese != 0) {
      if (choese == 1) {
        win = Game(Player_1, Player_2);
        how_win(Player_1, Player_2, win);
      } else if (choese == 2) {
        Player1(Player_1);
        Player2(Player_2, Player_1);
        Player_1.numberOfWins=0;
        Player_2.numberOfWins=0;
        text2(Player_1, Player_2);
        int win = Game(Player_1, Player_2);
        how_win(Player_1, Player_2, win);
      } else if (choese == 0) {
        break;
      }

      text3();
      choese = int.parse(stdin.readLineSync()!);
      while (choese != 0 && choese != 1 && choese != 2) {
        print('invalid input ,plalese enter 1 , 2 or 0');
        choese = int.parse(stdin.readLineSync()!);
      }
    }
  }
}
