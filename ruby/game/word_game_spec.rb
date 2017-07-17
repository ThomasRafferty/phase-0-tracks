require_relative 'word_game'

describe Word_game do
  let(:game) {Word_game.new("cat")}

  it "adds words to guessed letter array" do
    expect(game.add_guess_letter("a")).to eq ["a"]
  end

  it "takes a letter and sees if it is the word game array" do expect(game.letter_guesser("c")).to eq ["c","-","-"]
  end


end

#  it "takes input word and turns it into dash marks" do expect(game.word_disguiser(["c","a","t"]).to eq "---"
#end