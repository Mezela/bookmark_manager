feature 'add a new bookmark' do
  scenario 'add a new bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    click_button('Submit')

    expect(page).to have_content('http://www.testbookmark.com')
  end

end
