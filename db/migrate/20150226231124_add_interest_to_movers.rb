class AddInterestToMovers < ActiveRecord::Migration
  def change
    add_column :movers, :interest, :string
  end
end
