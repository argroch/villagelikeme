class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.integer :walk_score
      t.integer :city_id

      t.timestamps
    end
  end
end
