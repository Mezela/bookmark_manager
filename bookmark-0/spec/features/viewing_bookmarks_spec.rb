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
    Bookmark.create(title:'Search engine', url: 'http://www.google.com')
    Bookmark.create(title:'Online shopping', url: 'http://www.amazon.co.uk')
    visit('/bookmarks')
    expect(page).to have_link('Search engine', href: 'http://www.google.com')
    expect(page).to have_link('Online shopping', href: 'http://www.amazon.co.uk')
  end
end