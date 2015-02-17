class BastardizeTheMoverModelAsWell < ActiveRecord::Migration
  def change
  	  	add_column :movers, :full_hood_address, :string
  end
end
