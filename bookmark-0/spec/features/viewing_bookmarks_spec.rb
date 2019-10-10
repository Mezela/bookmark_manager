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
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
    conn.exec("INSERT INTO bookmarks (url) VALUES ('http://www.amazon.co.uk');")
    visit('/bookmarks')
    expect(page).to have_content('http://www.google.com')
    expect(page).to have_content('http://www.amazon.co.uk')
  end
end