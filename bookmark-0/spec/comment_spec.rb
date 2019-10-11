require 'comment'

describe Comment do
  describe '.create' do
    it 'creates a comment for a bookmark' do
      bookmark = Bookmark.create(title: 'Search engine', url: 'http://www.google.com')
      comment = Comment.create(bookmark_id: bookmark.id, text: 'Comment 1')

      expect(comment).to be_a Comment
      expect(comment.bookmark_id).to eq bookmark.id
    end
  end

end