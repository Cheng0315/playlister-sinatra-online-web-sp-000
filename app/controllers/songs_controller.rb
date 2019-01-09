class SongsController < ApplicationController

  get "/songs" do
    @songs = Song.all
    erb :"songs/index"
  end

  get "/songs/new" do
    erb :"songs/new"
  end

  post "/songs" do
    @artist = Artist.find_by(name: params["Artist Name"])
    if !!@artist
      @song = Song.new(name: params[:Name])
  end

  get "/songs/:slug" do
    @song = Song.find {|song| song.slug == params[:slug]}
    erb :"songs/show"
  end
end
