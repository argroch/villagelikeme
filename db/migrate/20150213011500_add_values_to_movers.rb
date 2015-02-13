class AddValuesToMovers < ActiveRecord::Migration
  def change
    add_column :movers, :fave_hood, :string
    add_column :movers, :suggest_hood, :string
  end
end
