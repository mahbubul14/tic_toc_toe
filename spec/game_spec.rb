# spec/game_spec.rb
require_relative '../lib/game'
describe Game do
  describe '#initialize' do
    it 'returns number from 1 - 9 ' do
      expect(subject.board).to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
    it 'returns an index at 0' do
      expect(subject.counter).to eql(0)
    end
  end

  describe '#count' do
    it 'returns an index at 1' do
      expect(subject.count).to eql(1)
    end
  end

  describe '#add_board' do
    it 'returns 0 to on the board if ' do
      subject.add_board(2)
      expect(subject.board).to eql([1, 'O', 3, 4, 5, 6, 7, 8, 9])
    end
    it 'returns X or 0 to  the number on the board' do
      subject.count
      subject.add_board(2)
      expect(subject.board).to eql([1, 'X', 3, 4, 5, 6, 7, 8, 9])
    end
  end

  describe '#display' do
    it 'displays board with current moves by players' do
      subject.add_board(5)
      expect(subject.board).to eq([1, 2, 3, 4, 'O', 6, 7, 8, 9])
    end
  end
end
