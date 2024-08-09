import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final rng = Random();
  while (true) {
    stdout.write("Rock , Paper , Scissors ? (r/p/s)");
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playMove;
      if (input == 'r') {
        playMove = Move.rock;
      } else if (input == 'p') {
        playMove = Move.paper;
      } else {
        playMove = Move.scissors;
      }

      final random = rng.nextInt(3);
      final aiMove = Move.values[random];
      if (playMove == aiMove) {
        print('its draw');
      } else if (playMove == Move.rock && aiMove == Move.scissors ||
          playMove == Move.paper && aiMove == Move.rock ||
          playMove == Move.scissors && aiMove == Move.paper) {
        print('You win');
      } else {
        print('You lose');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('invalid value');
    }
  }
}
