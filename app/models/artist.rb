class Artist < ActiveRecord::Base

  has_many :songs
  has_many :genres, through: :songs
  # has_many :notes, through: :songs


end



# The base models, controllers, and seed data have been provided for you,
#
# but the associations have not been wired up.
#
# Artists and genres have many songs.
# Songs belong to both and have many notes.
# Notes belong to songs.


# 
# Artist  --< Song  >-- Genre
#              ^
#              |
#             Note
