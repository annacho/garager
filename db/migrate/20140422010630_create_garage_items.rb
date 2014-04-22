class CreateGarageItems < ActiveRecord::Migration
  def change
    create_table :garage_items do |t|

      t.timestamps
    end
  end
end
