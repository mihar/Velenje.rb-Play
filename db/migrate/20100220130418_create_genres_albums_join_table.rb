class CreateGenresAlbumsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :albums_genres, :id => false do |t|
      t.integer :album_id
      t.integer :genre_id
    end
  end

  def self.down
  end
end
