class AddColumnToMovers < ActiveRecord::Migration
  def change
  	add_column :movers, :latitude, :float
    add_column :movers, :longitude, :float
  end
end
