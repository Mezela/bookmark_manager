feature 'update a bookmark' do
  scenario 'update a bookmark' do
    bookmark = Bookmark.create(title: 'Test Bookmark', url:'http://www.testbookmark.com')
    visit('/bookmarks')
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
    click_button('Update')
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/update"
    fill_in('title', with: 'Hating this')
    fill_in('url', with: 'http://www.hatethis.com')
    click_button('Submit')
    expect(current_path).to eq '/bookmarks'
    expect(page).to have_link('Hating this', href: 'http://www.hatethis.com')
    expect(page).not_to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end