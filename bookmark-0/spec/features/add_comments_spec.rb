feature 'Add comments' do
  scenario 'it allows a user to add a comment on the bookmark' do
    Bookmark.create(title: 'Test Bookmark', url:'http://www.testbookmark.com')
    visit('/bookmarks')
    first('.bookmark').click_button('Add comment')
    fill_in('comment', with: 'Comment 1')
    click_button('Submit')
    expect(page).to have_content('Comment 1')
  end

end