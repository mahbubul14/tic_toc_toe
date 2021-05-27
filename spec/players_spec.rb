# spec/players_spec.rb
require_relative '../lib/players'
describe Players do
  let(:player1) { Players.new }
  describe '#initialize' do
    it 'return player1 name ' do
      expect('Victor').to eql('Victor')
    end

    let(:player2) { Players.new }
    it 'return player2 name ' do
      expect('Jumoke').to eql('Jumoke')
    end
  end
end
