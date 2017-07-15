#Create a game which has 2 players.  The first player enters a word (or phrase) which will hence be called the desired word.  The point of the game is for the second player to guess the desired word by entering possible letters.  The number of guesses given to the second player should be based on the length of the desired word (possible a third or half the length, which can be better determined upon testing.  Repeat guesses should not count against player 2.  As player 2 makes guess the amount of the desired word they have discovered, using their guesses, should be displayed changing from an unknown symbol to seeing the correct letters and these placement in the desired word.  It player 2 runs out of guesses before discovering the desired word then player 2 loses, and player 1 wins, causing a message taunting player 2 to print.  If player 2 completes the word in less than or equal to the available guess then player 2 wins the game and a message congratulating them will print.

class Word_game
  attr_reader :guess_count, :is_over
  attr_accessor :game_word

  def initialize(player_1_input)
    @game_word = player_1_input
