class AddHandleToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :handle, :string, null: false, index: true
  end
end
