feature 'Creates a tag' do
  scenario 'a user is able to create a tag' do
    bookmark = Bookmark.create(title: 'Test Bookmark', url: 'http://www.testbookmark.com')
    visit('/bookmarks')
    click_button('Add tag')

    expect(current_path).to eq "/bookmarks/#{bookmark.id}/tags/new"
    fill_in('tag', with: 'New tag')
    click_button('Submit')

    expect(current_path).to eq "/bookmarks"
    expect(page).to have_content('New tag')
  end
end
