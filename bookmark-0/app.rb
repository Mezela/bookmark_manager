require 'sinatra/base'
require_relative './lib/bookmark'
require './database_connection_setup'

class BookmarkManager < Sinatra::Base
  
  enable :method_override

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:'bookmarks/index')
  end

  get '/bookmarks/new' do
    erb(:'bookmarks/new')
  end

  post '/bookmarks' do
    Bookmark.create(title: params[:title] ,url: params[:url])
    redirect('/bookmarks')
  end
  
  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect('/bookmarks')
  end

  get '/bookmarks/:id/update' do
    # @bookmarkid = params[:id]
    @bookmark = Bookmark.find(id: params[:id])
    erb(:'bookmarks/update')
  end

  patch '/bookmarks/:id' do
    # @bookmarkid = params[:id]
    Bookmark.update(id: params[:id], title: params[:title], url: params[:url] )
    redirect('/bookmarks')
  end

  run! if app_file == $0
end