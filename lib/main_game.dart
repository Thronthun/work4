// ignore_for_file: avoid_print
import 'dart:io';
import 'dart:math';
import 'game.dart';

List<int> gameCount = [];

void main()
{
  String? or = 'Y';
  for (;;) {

    if (or != null) {

      if (or == 'Y' || or == 'y') {

        games();

      }
      if (or == 'N' || or == 'n') {

        print('╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟');
        print("Your plays " + (gameCount.length).toString() + " game");
        for (var i = 0; i < gameCount.length; i++)
        {

          print(
              "Round " + (i + 1).toString() + ": " + gameCount[i].toString() +
                  " guesses");

        }

        print('╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟╟');
        print('                  THE END                ');
        break;

      }

      stdout.write('Play again? (Y/N): ');
      or = stdin.readLineSync();

    }

  }

}
void games()
{

  stdout.write('Enter a maximum number to random: ');
  dynamic max = stdin.readLineSync();
  max = int.tryParse(max);
  var game = Game(maxRandom: max);
  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');
  for(;;)
  {

    stdout.write(
        '║ Guess the number between 1 and ' + (game.maxNum).toString() + ' : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null)
    {
      continue;

    }
    var result = game.doGuess(guess);
    if (result == 1)
    {

      print('║ ➜ $guess is TOO HIGH! ▲▲▲ ');
      print('╟────────────────────────────────────────');

    }
    else if (result == -1)
    {

      print('║ ➜ $guess is TOO LOW! ▼▼▼ ');
      print('╟────────────────────────────────────────');

    }
    else if (result == 0)
    {

      print('║ ➜ $guess is CORRECT ❤❤❤, total guesses: ' +
          (game.guessCount).toString());
      print('╟────────────────────────────────────────');
      gameCount.add(game.guessCount);
      break;

    }

  }

  print('║                 THE END                ');
  print('╚════════════════════════════════════════');

}
