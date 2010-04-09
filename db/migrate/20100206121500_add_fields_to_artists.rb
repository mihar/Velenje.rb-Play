class AddFieldsToArtists < ActiveRecord::Migration
  def self.up
    add_column :artists, :surname, :string
    add_column :artists, :band, :string
  end

  def self.down
    remove_column :artists, :band
    remove_column :artists, :surname
  end
end
