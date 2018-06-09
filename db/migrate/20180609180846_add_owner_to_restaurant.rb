class AddOwnerToRestaurant < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :creator_user_id, :integer
  end
end
