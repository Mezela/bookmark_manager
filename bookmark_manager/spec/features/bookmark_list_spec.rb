feature 'bookmark list' do
  scenario 'list' do
    visit('/')
    click_button('View bookmarks')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://sanger.dk')
  end
end