feature 'add a new bookmark' do
  scenario 'add a new bookmark' do
    visit('/bookmarks/new')
    fill_in('title', with: 'Test Bookmark')
    fill_in('url', with: 'http://www.testbookmark.com')
    click_button('Submit')

    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end

  scenario 'raises an error message if an invalid bookmark is added' do
    visit('/bookmarks/new')
    fill_in('title', with: 'Test Bookmark')
    fill_in('url', with: 'testbookmark.com')
    click_button('Submit')

    expect(page).to have_content('Invalid bookmark url')
  end
end
