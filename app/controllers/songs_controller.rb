class SongsController < ApplicationController

  get "/songs" do
    @songs = Song.all
    erb :"songs/index"
  end

  post "songs/:slug" do
    @song = Song.find_by_slug(params[:slug])
    erb :"songs/show"
  end
end
