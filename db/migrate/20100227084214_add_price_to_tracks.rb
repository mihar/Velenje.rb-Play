class AddPriceToTracks < ActiveRecord::Migration
  def self.up
    add_column :tracks, :price, :decimal
  end

  def self.down
    remove_column :tracks, :price
  end
end
