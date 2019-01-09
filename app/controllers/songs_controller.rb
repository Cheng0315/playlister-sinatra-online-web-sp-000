class SongsController < ApplicationController

  get "/songs" do
    @songs = Song.all
    erb :"songs/index"
  end

  get "/songs/:slug" do
    @song = Song.find {|song| song.slug == params[:slug]}
    binding.pry
    erb :"songs/show"
  end
end
