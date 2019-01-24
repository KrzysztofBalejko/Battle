require 'player'

RSpec.describe Player do

  describe '#name' do
    it 'returns the player name' do
      player1 = Player.new('Krzys')
      expect(player1.name).to eq('Krzys')
    end
  end
  describe '#health' do
    it 'returns the health points' do
      player1 = Player.new('Krzys')
      expect(player1.health).to eq(Player::DEFAULT_HEALTH)
    end
  end
  # describe '#attack' do
  #   it 'damages the player' do
  #     player1 = Player.new('Krzys')
  #     player2 = Player.new('Dan')
  #     expect(player2).to receive(:receive_damage)
  #     player1.attack(player2)
  #   end
  # end
  describe '#receive_damage' do
    it 'reduces the health' do
      player2 = Player.new('Dan')
      expect{player2.receive_damage}.to change{player2.health}.by(-10)
    end
  end
end
