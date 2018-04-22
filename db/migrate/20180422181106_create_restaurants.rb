class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :menu_url

      t.timestamps
    end
  end
end
