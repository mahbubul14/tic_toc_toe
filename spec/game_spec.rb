require_relative '../lib/game.rb'

describe Calculator do
    describe "#add" do
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
    let(:wins) {[0, 1, 2]}
    let(:steps) {[[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8],[6, 4, 2]]}
    it "returns the winner" do
      expect(steps).to include(wins)
  end
  end
end


  # # = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7],
  #  [2, 5, 8], [0, 4, 8],[6, 4, 2]])