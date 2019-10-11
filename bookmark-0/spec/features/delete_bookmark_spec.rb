feature 'delete a bookmark' do
  scenario 'delete a bookmark' do
    Bookmark.create(title: 'Test Bookmark', url:'http://www.testbookmark.com')
    visit('/bookmarks')
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
    first('.bookmark').click_button('Delete')
    expect(current_path).to eq('/bookmarks')
    expect(page).not_to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end