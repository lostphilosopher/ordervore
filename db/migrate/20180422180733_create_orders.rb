class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :order
      t.integer :user_id, null: false, index: true
      t.integer :restaurant_id, null: false, index: true

      t.timestamps
    end
  end
end
