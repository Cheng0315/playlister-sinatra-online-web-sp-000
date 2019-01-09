class SongsController < ApplicationController

  get "/songs" do
    @songs = Song.all
    erb :"songs/index"
  end

  get "/songs/:slug" do
    "hello"
  end
end
