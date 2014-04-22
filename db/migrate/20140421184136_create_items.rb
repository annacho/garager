class CreateItems < ActiveRecord::Migration
  def change
    create_table :garage_items do |t|
    	t.string :category
    	t.string :headline
    	t.integer :price
			t.string :condition
    	t.string :description
    	t.date :submit_date
    end
  end
end
