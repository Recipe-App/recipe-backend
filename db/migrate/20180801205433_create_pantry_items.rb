class CreatePantryItems < ActiveRecord::Migration[5.2]
  def change
    create_table :pantry_items do |t|
      t.string :proteins
      t.string :veggies
      t.string :grains
      t.string :seasonings
      t.string :other

      t.timestamps
    end
  end
end
