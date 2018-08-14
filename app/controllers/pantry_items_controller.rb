class PantryItemsController < ApplicationController

def show
  items = User.find(params[:id]).pantry_items.last
  render json: items, status: 201

end


def create
  pantry_items = PantryItem.new(pantry_items_params)
      if pantry_items.save
        pantry_items.save
        render json: pantry_items, status: 201
    end
  end


private
 def pantry_items_params
   params.require(:pantry_item).permit(:user_id,:proteins, :veggies, :grains, :seasonings, :other)
 end
end
