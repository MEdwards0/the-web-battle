require 'player'

describe Player do
  subject(:regina) { Player.new('Regina') }
  subject(:balthazar) { Player.new('Balthazar') }

  describe '#name' do
    it 'returns the name' do
      expect(regina.name).to eq 'Regina'
    end
  end

  describe '#hitpoints' do
    it 'returns the hit points' do
      expect(regina.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  # describe '#attack' do
  #   it 'damages the player' do
  #     expect(balthazar).to receive(:receive_damage)
  #     regina.attack(balthazar)
  #   end
  # end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { regina.receive_damage }.to change { regina.hit_points }.by(-10)
    end
  end
end
