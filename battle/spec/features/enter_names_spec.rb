feature 'enter names' do
  scenario 'submit names' do
    visit('/') 
    fill_in :player_1_name, with: 'Regina'
    fill_in :player_2_name, with: 'Balthazar'
    click_button 'Submit'

    save_and_open_page

    expect(page).to have_content 'Regina vs. Balthazar'
  end
end