feature 'enter names' do
  scenario 'submit names' do
    sign_in_and_play
    #save_and_open_page
    expect(page).to have_content 'Regina vs. Balthazar'
  end
end
