class ArtistsController < ApplicationController

  get "/artists" do
    @artists = Artist.all
    erb :"arttists/index"
  end
end
