require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of all the bookmarks' do
      Bookmark.create(url: 'http://www.google.com')
      Bookmark.create(url: 'http://www.amazon.co.uk')
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.amazon.co.uk')
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com')
      expect(Bookmark.all).to include('http://www.testbookmark.com')
    end
  end

end
