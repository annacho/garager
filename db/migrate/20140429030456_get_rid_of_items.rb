class GetRidOfItems < ActiveRecord::Migration
  def change
		drop_table "garage_items"
  end
end
