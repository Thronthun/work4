// ignore_for_file: avoid_print
import 'dart:math';
import 'dart:io';

class Game
{
  int? _a;
  int _guessCount = 0;
  int? max;
  Game({int? maxRandom})
  {
    maxRandom ??= 100;
    max = maxRandom;
    _a =Random().nextInt(max!)+1;
  }

  int get guessCount

  {

    return _guessCount;

  }

  int? get maxNum

  {

    return max;

  }

  int doGuess(int num)
  {

    _guessCount ++;
    if (num > _a!)
    {

      return 1;

    }
    else if (num < _a!)
    {

      return -1;

    }
    else
      {

      return 0;

    }

  }

}