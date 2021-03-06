class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def slug
    song_name = self.name
    song_name.downcase.split(" ").join("-")
  end

  def self.find_by_slug(slug)
    song_name = slug.split("-").map(&:capitalize).join(' ')
    song = self.find_by(name: song_name)
    song
  end
end
