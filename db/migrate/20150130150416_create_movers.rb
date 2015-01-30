class CreateMovers < ActiveRecord::Migration
  def change
    create_table :movers do |t|
      t.string :current_city
      t.string :moving_to
      t.string :email

      t.timestamps
    end
  end
end
