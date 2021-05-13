def sign_in_and_play
  visit('/')
    fill_in :player_1_name, with: 'Regina'
    fill_in :player_2_name, with: 'Balthazar'
    click_button 'Submit'
end
