class CreateGroupOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :group_orders do |t|
      t.integer :group_id, null: false, index: true
      t.integer :user_id, null: false
      t.integer :order_id, null: false
    end
  end
end
