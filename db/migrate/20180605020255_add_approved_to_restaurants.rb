class AddApprovedToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :approved, :boolean
  end
end
