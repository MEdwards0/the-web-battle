feature 'infrastructure test' do
  scenario 'runs html content' do
    visit('/')
    expect(page).to have_content 'Battle!'
  end
end
