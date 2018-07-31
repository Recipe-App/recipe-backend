class AddPasswordConfirmationToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :password_confirmation, :nil
  end
end
