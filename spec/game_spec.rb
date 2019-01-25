require 'game'
require 'player'

RSpec.describe Game do

let(:player1) { player1 = Player.new('Krzys') }
let(:player2) { player2 = Player.new('Dan') }
let(:game) { game = Game.new(player1, player2) }

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#game' do
    it 'takes two players' do
      expect(game.players).to include(player1).and include(player2)
    end
  end


end
