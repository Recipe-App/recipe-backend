class User < ApplicationRecord
  has_many :pantry_items
  rolify
  has_secure_password
end
