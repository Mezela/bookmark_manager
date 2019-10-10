feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit('/')
      expect(page).to have_content('Bookmark Manager')
    end
  end
end

feature 'viewing bookmarks' do
  scenario 'bookmarks are visible' do
    visit('/bookmarks')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.amazon.co.uk')
  end
end