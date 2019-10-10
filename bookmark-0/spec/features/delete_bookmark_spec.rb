feature 'delete a bookmark' do
  scenario 'delete a bookmark' do
    Bookmark.create(title: 'Test Bookmark', url:'http://www.testbookmark.com')
    visit('/bookmarks')
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
    click_button('Delete')
    expect(page).not_to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end