require 'sinatra/base'
require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/list_bookmarks' do
    @bookmarks = Bookmarks.all
    erb :list_bookmarks
  end

  run! if app_file==$0

end


