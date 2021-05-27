# spec/players_spec.rb
require_relative '../lib/players'
describe Players do
  let(:player1) { Players.new }
  describe '#initialize' do
    it 'returns player 1 name ' do
      expect('Victor').to eql('Victor')
    end
    it 'returns player 1 name ' do
      expect('Victor').not_to eql('Jumoke')
    end

    let(:player2) { Players.new }
    it 'returns player 2 name ' do
      expect('Jumoke').to eql('Jumoke')
    end
    it 'returns player 2 name ' do
      expect('Jumoke').not_to eql('Victor')
    end
  end
end
