feature 'view hitpoints' do
  scenario 'see player 2 hitpoints' do
    visit('/')
    fill_in :player_1_name, with: 'Regina'
    fill_in :player_2_name, with: 'Balthazar'
    click_button 'Submit'

    #save_and_open_page

    expect(page).to have_content 'Balthazar: 1000HP'
  end
end
