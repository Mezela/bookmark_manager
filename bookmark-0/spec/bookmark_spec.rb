require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns a list of all the bookmarks' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.amazon.co.uk')
    end
  end

end
