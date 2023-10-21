## SUPER HANGMAN LEGEND

## SYNOPSIS

`hangman [OPTIONS]`

## DESCRIPTION

**Hangman** is an arcade game where you have to guess a random word.

Best played with **cool-retro-term**

## DEPENDENCIES

bash, coreutils, libpulse, ncurses, words.

## INSTALL/UNINSTALL

Clone this repository and,

Install: `make install`

Uninstall: `make uninstall`

## USAGE

`hangman [splash] [easy | hard] [rank] [quiet] `<br>

## OPTIONS

  * **splash**

    Show a splash screen.

  * **easy**
    
    Select easy mode.

  * **hard**

    Select hard mode.

  * **rank**

    Display score board and exit.

  * **quiet**

    Disable ingame sounds.

## RULES

Guess a random word by entering letters and try to get as much points as possible.<br>
To help you, the first and the last letter are shown.
The game also displays the maximum score you can get if you make no mistake.
You start the game with 10 **energy** points. For each incorrect letter, you lose 1 **energy** point.<br>
You lose the game when **energy** reaches 0.<br>
If you enter 3 correct letters in a row, game enters **chain** mode. In this mode, you start to earn points and next correct letters grant extra points.<br>
Letters that are visible at the beginning of a game can also be played anytime to get more points or to initiate **chain** mode.<br>

If you guess a word flawlessly, you get bonus points.<br>
If you get 3 or more flawless victories in a row, you also get bonus points.

## GAME SCREEN

![screenshot](img/screenshot.png)

## ENERGY

In **easy** mode you get 1 **energy** point for each correct letter entered when in **chain** mode.

In **normal** and **hard** mode you get 1 **energy** point every 2 victories.

In **normal** mode, **energy** is fully refilled every 6 victories.

In **hard** mode, **energy** is fully refilled every 10 victories.

## SCORING

Victory:

  - letters x energy

Chain:

  - easy: (chain-2) x 50
  - normal: (chain-2) x 100
  - hard: (chain-2) x 150

Flawless:

  - easy: 250
  - normal: 500
  - hard: 1000

Streak:

  - easy: streak x 500
  - normal: streak x 2500
  - hard:  streak x 5000
