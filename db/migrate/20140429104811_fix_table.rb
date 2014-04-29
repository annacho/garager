class FixTable < ActiveRecord::Migration
  def change
  	drop_table :new_garage_items

  	add_column :garage_items, :unsold, :boolean, default: false
  end
end
