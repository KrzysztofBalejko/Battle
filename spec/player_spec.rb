require 'player'
RSpec.describe Player do

  it 'returns the player name' do
    player1 = Player.new('Krys')
    expect(player1.name).to eq('Krys')
  end
end
