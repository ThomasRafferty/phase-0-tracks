require_relative 'word_game'

describe Word_game do
  let(:game) {Word_game.new("cat")}

  it "adds words to guessed letter array" do
    expect(game.add_guess_letter("a")).to eq ["a"]
  end

  it "takes a letter and sees if it is the word game array" do expect(game.letter_guesser("c")).to eq 1
  end

it "takes input word and turns it into dash marks" do expect(game.word_disguiser).to eq "---"
end

end

#Cannot figure out why these tests fail when you put in the driver code.  Thought rspec was testing the Class...  If you comment out lines 64 to 75 of word_game.rb then these rspec lines work.  Clearly, need a lot more work on this whole subject.  Sorry these assignments are hot messes.
