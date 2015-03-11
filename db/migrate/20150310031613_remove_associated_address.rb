class RemoveAssociatedAddress < ActiveRecord::Migration
  def change
  	remove_column :neighborhoods, :associated_address
  end
end
