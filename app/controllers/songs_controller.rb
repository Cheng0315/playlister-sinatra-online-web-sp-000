class SongsController < ApplicationController

  get "/songs" do
    @songs = Song.all
    erb :"songs/index"
  end

  get "/songs/new" do
    erb :"songs/n"
  end

  post "/songs" do

  end

  get "/songs/:slug" do
    @song = Song.find {|song| song.slug == params[:slug]}
    erb :"songs/show"
  end
end
