class AddAssociatedAddress < ActiveRecord::Migration
  def change
  	add_column :neighborhoods, :associated_address, :string
  end
end
