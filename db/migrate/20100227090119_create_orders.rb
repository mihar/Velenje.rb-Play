class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :name
      t.string :surname
      t.string :address
      t.integer :post_id
      t.string :email
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
