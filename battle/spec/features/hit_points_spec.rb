feature 'view hitpoints' do
  scenario 'see player 2 hitpoints' do
    sign_in_and_play

    #save_and_open_page

    expect(page).to have_content 'Balthazar: 1000HP'
  end
end
