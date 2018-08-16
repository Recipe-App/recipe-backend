class SavedRecipe < ApplicationRecord
  belongs_to :user  #Cannot submit new recipes if associations are place
end
