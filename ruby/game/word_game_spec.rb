require_relative 'word_game'

decribe Word_game do
  let(:game_word) {Word_game.new("cat fish")}

  it "sets the input word as the game word"
      do
    expect(game_word).to eq ("cat fish")
  end