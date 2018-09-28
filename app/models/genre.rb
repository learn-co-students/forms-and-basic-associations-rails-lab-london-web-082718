class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs
end


# Artist  --< Song  >-- Genre
#              ^
#              |
#             Note
