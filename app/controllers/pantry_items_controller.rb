class PantryItemsController < ApplicationController

# def show
#   pantry_item = PantryItem.find params[:id]
#   render json: pantry_item
# end
#
def create
  pantry_items = PantryItem.new(pantry_items_params)
  pantry_items.save
  render json: pantry_items, status: 201

end

private
 def pantry_items_params
   params.require(:pantry_item).permit(:proteins, :veggies, :grains, :seasonings, :other)
 end
end
