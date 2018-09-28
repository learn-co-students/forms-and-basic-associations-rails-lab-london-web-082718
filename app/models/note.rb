class Note < ActiveRecord::Base

  belongs_to :song
end


# Artist  --< Song  >-- Genre
#              ^
#              |
#             Note
