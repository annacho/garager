class FixBoolean < ActiveRecord::Migration
  def change
  	change_column	:garage_items, :unsold, :boolean, default: true
  end
end
