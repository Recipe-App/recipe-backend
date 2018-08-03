class CreateSavedRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :saved_recipes do |t|
      t.references :user, foreign_key: true
      t.string :label
      t.string :ingredients
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
