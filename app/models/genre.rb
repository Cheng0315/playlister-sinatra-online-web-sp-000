class Genre < ActiveRecord::Base
  has_many :songs thorugh: :song_genres
  has_many :artists, through: :songs
end
