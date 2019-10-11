require 'pg'

def setup_test_database
  conn = PG.connect(dbname: 'bookmark_manager_test')

  # Clear the bookmarks table
  conn.exec('TRUNCATE TABLE bookmarks, comments, tag, bookmark_tags;')

end
