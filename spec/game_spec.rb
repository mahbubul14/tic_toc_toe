require_relative '../lib/game.rb'

describe Calculator do
    describe "#add" do
    let(:hello) {Calculator.new}
      it "returns the sum of two numbers" do
        calculator = Calculator.new
        expect(calculator.add(5, 2)).to eql(7)
      end
    end
  end

  describe Game do
    describe "#initialize" do
    subject(:a) {Game.new}
      it "returns number between 1-9" do
      expect(a.board).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
      end
    end
  
  describe "#won?" do
    # let(:wins)  {Game.new}
    it "returns the winner" do
      expect(subject.won?).to eq([[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [6, 4, 2]])
    end
  end

  # = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8],[6, 4, 2]])

end