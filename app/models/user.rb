class User < ApplicationRecord
  has_many :pantry_items
  has_many :saved_recipes
  # rolify
  has_secure_password
end
