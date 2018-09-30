class AddGenreToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :genre_id, :string
    add_column :songs, :integer, :string
  end
end
