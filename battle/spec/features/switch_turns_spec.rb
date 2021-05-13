
feature 'switch turns' do
  context 'see the current turn' do
    scenario 'at start of game' do
      sign_in_and_play
      expect(page).to have_content "Regina's turn"
    end

    scenario 'after player one attacks' do
      sign_in_and_play
      attack_and_confirm
      expect(page).not_to have_content "Regina's turn"
      expect(page).to have_content "Balthazar's turn"
    end
  end

  scenario 'after player 2 attacks' do
    sign_in_and_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content "Balthazar's turn"
      expect(page).to have_content "Regina's turn"
  end
end
