#Create a game which has 2 players.  The first player enters a word (or phrase) which will hence be called the desired word.  The point of the game is for the second player to guess the desired word by entering possible letters.  The number of guesses given to the second player should be based on the length of the desired word (possible a third or half the length, which can be better determined upon testing.  Repeat guesses should not count against player 2.  As player 2 makes guess the amount of the desired word they have discovered, using their guesses, should be displayed changing from an unknown symbol to seeing the correct letters and these placement in the desired word.  It player 2 runs out of guesses before discovering the desired word then player 2 loses, and player 1 wins, causing a message taunting player 2 to print.  If player 2 completes the word in less than or equal to the available guess then player 2 wins the game and a message congratulating them will print.

  class Word_game
  attr_reader :guess_count, :game_word, :guess_array, :found_index
  attr_accessor :game_word_array, :disguised_array, :game_word_array, :guess_letter

  def initialize (word)
    @game_word = word
    @guess_count = 0
    @guess_letter_array = []
    @game_word_array = @game_word.split("")
    @is_over = false
  end

  def add_guess_letter (guess)
    @guess_letter = guess
    @guess_letter_array << (@guess_letter)
  end

 def word_disguiser
 @disguised_array = @game_word_array
     @disguised_array.map! do |letter|
    if letter == " "
      letter = " "
    else
      letter = "-"
    end
   end
  p @disguised_array.join("")
 end

def correct_guess_letter_index
  if @game_word_array.include? @guess_letter
    @found_index << word_array.index(guess)
  end
end








 #   def check_cup(index)
 #    @guess_count += 1
 #    if @cups[index] == "ball"
 #      @is_over = true
 #    else
 #      false



  #def guess_checker

end


# User interface###################
game = Word_game.new("cat fish")

p game.game_word_array
p game.add_guess_letter("c")
p game.add_guess_letter("f")
p game.add_guess_letter("d")
game.word_disguiser
p game.disguised_array
#p game.already_guess_letter#