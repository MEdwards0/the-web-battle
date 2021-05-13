feature 'attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Regina attacked Balthazar!"
  end
  
  scenario 'reduce player 2 hitpoints by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Balthazar: 1000HP'
    expect(page).to have_content 'Balthazar: 990HP'
  end

  scenario 'attack player 1' do
    sign_in_and_play
    attack_and_confirm
    click_link 'Attack'
    expect(page).to have_content "Balthazar attacked Regina!"
  end
  
  scenario 'reduce player 1 hitpoints by 10' do
    sign_in_and_play
    attack_and_confirm
    click_link 'Attack'
    expect(page).not_to have_content 'Regina: 1000HP'
    expect(page).to have_content 'Regina: 990HP'
  end
end
