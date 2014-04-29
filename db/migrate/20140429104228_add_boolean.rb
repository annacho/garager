class AddBoolean < ActiveRecord::Migration
  def change
  	add_column :new_garage_items, :unsold, :boolean, default: false
  end
end
