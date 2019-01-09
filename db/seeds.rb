# Add seed data here. Seed your database with `rake db:seed`

artist1 = Artist.create(name: "Mike")
song1 = Song.create(name: "Hellu")
genre1 = Genre.create(name: "pop")
song1.artist_id = artist1.id
song1.genre_id = genre1.id
