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

  describe '#won?' do
    it 'checks for  winning combinations and returns nil if game not won' do
      expect(subject.won?).not_to be true
    end
    it 'checks winning combinations for a win' do
      subject.count
      subject.add_board(6)
      subject.count
      subject.add_board(4)
      subject.count
      subject.add_board(3)
      subject.count
      subject.add_board(8)
      subject.count 
      subject.add_board(9)
      expect(subject.won?).to be_a(Array)
      expect(subject.won?).to eql([2, 5, 8])
    end
  end
  describe '#tie?' do
    it 'returns false if it finds empty cells ' do
      expect(subject.tie?).to be false
    end
    it 'returns true if all games cells are taken' do
      subject.count
      subject.add_board(1)
      subject.count
      subject.add_board(2)
      subject.count
      subject.add_board(3)
      subject.count
      subject.add_board(4)
      subject.count
      subject.add_board(5)
      subject.count
      subject.add_board(6)
      subject.count
      subject.add_board(7)
      subject.count
      subject.add_board(8)
      subject.count
      subject.add_board(9)
      expect(subject.tie?).to be true
    end
  end


end
