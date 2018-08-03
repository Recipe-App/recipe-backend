class SavedRecipesController < ApplicationController

  def show
    @recipes = SavedRecipe.all
  end

  def create
    recipe = SavedRecipe.new(recipe_params)

    if SavedRecipe.pluck(:url).exclude?(recipe.url)
      recipe.save
      render json: {}, status: 201
    else
      render json: {errors: recipe.errors}, status: 422
    end

  end

  private
  def recipe_params
    params.require(:recipe).permit(:user_id, :label, :ingredients, :url, :image)
  end

end
