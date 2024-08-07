class CreateBuildings < ActiveRecord::Migration[6.1]
  def change
    create_table :buildings do |t|
      t.string :shop_name
      t.string :place
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
