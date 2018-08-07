class SavedRecipesController < ApplicationController
  before_action :authenticate_user

  def create
    recipe = SavedRecipe.new(recipe_params)

    if SavedRecipe.pluck(:url).exclude?(recipe.url)
      recipe.save
      render json: {}, status: 201
    else
      render json: {errors: recipe.errors}, status: 422
    end

  end

  def show
    @recipes = User.find(params[:id]).saved_recipes
  end

  def updated
  end

  def delete
    User.find(params[:delete][:user_id]).saved_recipes.where(url: params[:delete][:url]).destroy_all
  end


  private
  def recipe_params
    params.require(:recipe).permit(:user_id, :label, :ingredients, :url, :image)
  end

end
