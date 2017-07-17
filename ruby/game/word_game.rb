#Create a game which has 2 players.  The first player enters a word (or phrase) which will hence be called the desired word.  The point of the game is for the second player to guess the desired word by entering possible letters.  The number of guesses given to the second player should be based on the length of the desired word (possible a third or half the length, which can be better determined upon testing.  Repeat guesses should not count against player 2.  As player 2 makes guess the amount of the desired word they have discovered, using their guesses, should be displayed changing from an unknown symbol to seeing the correct letters and these placement in the desired word.  It player 2 runs out of guesses before discovering the desired word then player 2 loses, and player 1 wins, causing a message taunting player 2 to print.  If player 2 completes the word in less than or equal to the available guess then player 2 wins the game and a message congratulating them will print.

 class Word_game
  attr_reader :game_length
  attr_accessor :game_word_array, :guess_letter, :found_index #:game_hash

  def initialize (word)
    @game_word = word
    @guess_count = 0
    @guess_letter_array = []
    @game_word_array = @game_word.split("")
    @is_over = false
    @found_index = []
    @game_length = (@game_word_array.length/2)
  end

  def add_guess_letter(guess)
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
  @disguised_array.join("")
 end

   def letter_guesser(letter)
    disguised_array = @game_word.split("")
    disguised_array.map! do |x|
      if x == letter
       x = x
      else
      x = "-"
      end
    end
  end


end


### Don't think has is the right direction but kept just in case came back to idea
#  def create_game_hash
#    game_hash_hold = @game_word_array
#     @game_hash = {}
#    game_hash_hold.each do |letter|
  # Possible match hash value to index value to disguise
#      @game_hash[letter] = 0
#    end
#  end


###This conditional shrinks the word, with only the last correct letter staying
#  def letter_guesser
#  disguised_array = @game_word.split("")
#      disguised_array.map! do |letter|
#       if @guess_letter_array.include? (letter)
#          if @guess_letter == letter
#            letter = @guess_letter
#          end
#        elsif letter == " "
#         letter = " "
#       else
#         letter = "-"
#       end
#    end
#   p disguised_array.join("")

### Cannot get index to work properly, possibly with letter guesser
  def correct_guess_letter_index
    if @game_word_array.include? @guess_letter
       @found_index << @game_word_array.index(@guess_letter)
      p @found_index
    end
  end



# User interface###############################
game = Word_game.new("cat fish")

p game.game_word_array
p game.add_guess_letter("c")
p game.found_index
p game.word_disguiser
p game.letter_guesser("c")
p game.letter_guesser("f")
# p game.correct_guess_letter_index
# p game.add_guess_letter("f")
# p game.correct_guess_letter_index
# p game.add_guess_letter("d")
# game.word_disguiser
# p game.disguised_array
# #p game.already_guess_letter#