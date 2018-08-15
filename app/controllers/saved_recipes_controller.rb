class SavedRecipesController < ApplicationController
  before_action :authenticate_user

  def create
    recipe = SavedRecipe.new(recipe_params)
    byebug
    if SavedRecipe.pluck(:url).exclude?(recipe.url)
      recipe.save
      render json: recipe, status: 201
    else
      render json: {errors: recipe.errors}, status: 422
    end

  end

  def show
    @recipes = User.find(params[:id]).saved_recipes
  end

  def update
  end

  def destroy
    SavedRecipe.find(params[:id]).delete
    render json: {response: "Recipe Deleted!"}, status: 201
  end


  private
  def recipe_params
    params.require(:recipe).permit(:user_id, :label, :ingredients, :url, :image)
  end

end
