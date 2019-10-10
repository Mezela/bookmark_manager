require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '.all' do
    it 'returns a list of all the bookmarks' do
      bookmark = Bookmark.create(title: 'Search engine', url: 'http://www.google.com')
      Bookmark.create(title: 'Online shopping', url: 'http://www.amazon.co.uk')
      bookmarks = Bookmark.all

      expect(bookmark).to be_a Bookmark
      expect(bookmarks.length).to eq 2
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq('Search engine')
      expect(bookmarks.first.url).to eq('http://www.google.com')
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      bookmark = Bookmark.create(title:'Test Bookmark', url: 'http://www.testbookmark.com')
      # connection = PG.connect(dbname: 'bookmark_manager_test')
      # result = connection.query("SELECT * FROM bookmarks WHERE id = #{id};")
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.url).to eq('http://www.testbookmark.com')
      expect(bookmark.title).to eq('Test Bookmark')
    end
  end

  describe '.delete' do
    it 'deletes a bookmark' do
      bookmark = Bookmark.create(title:'Test Bookmark', url: 'http://www.testbookmark.com')
      Bookmark.delete(id: bookmark.id)
      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 0
      expect(bookmarks).not_to include('http://www.testbookmark.com')
    end
  end

end
