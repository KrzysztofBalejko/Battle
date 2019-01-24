class Game

  def initialize(player)
    @player = player
  end

  def attack(player)
    player.receive_damage
  end

end
