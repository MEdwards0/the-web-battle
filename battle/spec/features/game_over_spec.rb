feature 'game over' do
  context 'when player 1 reaches 0HP first' do
    before do
      sign_in_and_play
      attack_and_confirm
      allow(Kernel).to receive(:rand).and_return(1000)
    end

    scenario 'player 1 loses' do
      click_link 'Attack'
      expect(page).to have_content 'Regina Loses'
    end
  end
end