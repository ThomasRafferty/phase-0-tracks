#Create a game which has 2 players.  The first player enters a word (or phrase) which will hence be called the desired word.  The point of the game is for the second player to guess the desired word by entering possible letters.  The number of guesses given to the second player should be based on the length of the desired word (possible 2 or 3 times the length, which can be better determined upon testing.  Repeat guesses should not count against player 2.  As player 2 makes guess the amount of the desired word they have discovered, using their guesses, should be displayed changing from an unknown symbol to seeing the correct letters and these placement in the desired word.  It player 2 runs out of guesses before discovering the desired word then player 2 loses, and player 1 wins, causing a message taunting player 2 to print.  If player 2 completes the word in less than or equal to the available guess then player 2 wins the game and a message congratulating them will print.

 class Word_game
  attr_reader :game_length
  attr_accessor :game_word, :game_word_array, :guess_letter, :found_index, :progress_array, :guess_count, :is_over, :working_letter #:game_hash

  def initialize (word)
    @game_word = word
    @guess_count = 0
    @guess_letter_array = []
    @game_word_array = @game_word.split("")
    @is_over = false
    @found_index = []
    @game_length = (@game_word_array.length*2)
  end

  def add_guess_letter(guess)
    @guess_letter = guess
    @guess_letter_array << (@guess_letter)
  end

#Cannot get this array to stay stable without overwriting with "-" for here of at letter guesser
 def word_disguiser
 @disguised_array = @game_word_array
     @disguised_array.map! do |letter|
#Here is what I was trying to make work
  # if @guess_letter_array.include? (letter)
  #    @guess_letter_array.map! do |correct_letter|
  #      @working_letter = correct_letter
  #    end
  #   letter = @working_letter
    if letter == " "
      letter = " "
    else
      letter = "-"
    end
   end
  @disguised_array.join("")
 end

   def letter_guesser(letter)
    @progress_array = @game_word.split("")
    if (@progress_array == @game_word_array) || (@guess_count == @game_length)
      @is_over = true
    end
    @progress_array .map! do |x|
      if x == letter
        x = x
      else
        x = "-"
      end
    end
    p progress_array.join("")
    p "Guesses used"
    @guess_count +=1
  end
end

# User interface################################################

puts "Welcome to the Word Guesser Game!"
puts "Player one please enter a word!"
### I know there is a module to hide what player 1 inputs but I focused more on getting the program to work
player1_word = gets.chomp
game = Word_game.new(player1_word)

while !game.is_over
puts "Player 2 guess a letter!"
guess = gets.chomp
  p "The secret word is this long!"
  p game.word_disguiser
  p "Here are the letters you have guessed so far."
  p game.add_guess_letter(guess)
  p puts "you have made this much progress!"
  p game.letter_guesser(guess)
end



#Ideas that did not work but was considering coming back to.####

### Don't think has is the right direction but kept just in case came back to idea
#  def create_game_hash
#    game_hash_hold = @game_word_array
#     @game_hash = {}
#    game_hash_hold.each do |letter|
  # Possible match hash value to index value to disguise
#      @game_hash[letter] = 0
#    end
#  end

# ### Cannot get index to work properly, possibly with letter guesser
#   def correct_guess_letter_index
#     if @game_word_array.include? @guess_letter
#        @found_index << @game_word_array.index(@guess_letter)
#       p @found_index
#     end
#   end