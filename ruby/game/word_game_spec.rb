require_relative 'word_game'

describe Word_game do
  let(:game) {Word_game.new("cat")}

  it "adds words to guessed letter array" do
    expect(game.add_guess_letter("a")).to eq ["a"]
  end

end