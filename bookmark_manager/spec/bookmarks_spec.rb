require 'bookmarks'

describe Bookmarks do
  it 'has an array ' do
    bookmarks = Bookmarks.all
    expect(bookmarks).to include('http://www.google.com')
    expect(bookmarks).to include('http://sanger.dk')
  end
end