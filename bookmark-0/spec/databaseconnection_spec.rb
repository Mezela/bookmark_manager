require 'database_connection'

describe DatabaseConnection do
  describe '.setup' do
    it 'sets up a connection to the database' do
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
      DatabaseConnection.setup('bookmark_manager_test')
    end
# the below test is implicitly tested when .query method is run
    # it 'ensures that the connection persists' do
    #   connection = DatabaseConnection.setup('bookmark_manager_test')
    #   expect(DatabaseConnection.connection).to eq connection
    # end
  end

  describe '.query' do
    it 'executes the SQL query string on the database' do
      connection = DatabaseConnection.setup('bookmark_manager_test')
      expect(connection).to receive(:exec).with("SELECT * FROM bookmarks;")
      DatabaseConnection.query("SELECT * FROM bookmarks;")
    end
  end

end 