require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  
    let(:player_1) { double :player, hit_points: 60 }
    let(:player_2) { double :player, hit_points: 60 }
    let(:dead_player) { double :player, hit_points: 0 }
    subject(:finished_game) { described_class.new(dead_player, player_2) }


  describe '#player 1' do
    it 'receives the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player 2' do
    it 'receives the second player' do
      expect(game.player_2).to eq player_2
    end
  end
  
  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe 'current turn' do
    it 'starts with player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#game_over?' do
    it 'returns false if no one is at 0 hp' do
      expect(game.game_over?).to be false
    end

    it 'returns true if dead player' do
      expect(game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0 hp' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end
