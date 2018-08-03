class AddUserRefToPantryItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :pantry_items, :user, foreign_key: true
  end
end
