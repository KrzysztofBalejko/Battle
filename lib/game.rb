class Game
  
  attr_reader :players

  def initialize(player, player_two)
    @players = [player, player_two]
  end

  def player(number)
    return @players[number - 1]
  end

  def attack(player)
    player.receive_damage
  end

end
