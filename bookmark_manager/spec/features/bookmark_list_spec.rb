feature 'bookmark list' do
  scenario 'list' do
    visit('/')
    expect(page).to have_button('View bookmarks')
  end
end