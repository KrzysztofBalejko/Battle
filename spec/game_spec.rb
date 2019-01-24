require 'game'
require 'player'

RSpec.describe Game do

  describe '#attack' do
    it 'damages the player' do
      player1 = Player.new('Krzys')
      player2 = Player.new('Dan')
      game = Game.new(player1)
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

end
