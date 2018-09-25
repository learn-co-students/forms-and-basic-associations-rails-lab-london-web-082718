class Song < ActiveRecord::Base
  belongs_to :genre
  belongs_to :artist
  has_many :notes

  def genre_name=(genre)
    self.genre = Genre.find_or_create_by(name: genre)
  end

  def genre_name
    self.genre ? self.genre.name : nil
  end

  def artist_name=(a_name)
    self.artist = Artist.find_or_create_by(name: a_name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def note_contents
    self.notes.map(&:content).reject(&:empty?)
  end

  def note_contents=(contents)
    contents.each do |note|
      self.notes << Note.create(content: note)
    end
  end

end
