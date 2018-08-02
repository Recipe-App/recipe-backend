class AddUserReftoPantryItems < ActiveRecord::Migration[5.2]
  def change
      add_reference :pantry_items, :users, foreign_key: true
  end
end
