class FixGarageItems < ActiveRecord::Migration
  def change
  	drop_table "garage_items"

  	create_table "garage_items", force: true do |t|
	    t.string  "category"
	    t.string  "headline"
	    t.integer "price"
	    t.string  "condition"
	    t.string  "description"
	    t.date    "submit_date"
	  end
  end
end
