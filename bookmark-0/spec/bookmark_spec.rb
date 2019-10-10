require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of all the bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager_test')
      conn.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")
      conn.exec("INSERT INTO bookmarks (url) VALUES ('http://www.amazon.co.uk');")
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.amazon.co.uk')
    end
  end

end
