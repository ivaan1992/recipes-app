class ShopsController < ApplicationController
  def index
    @recipe_food = RecipeFood.where(recipe_id: params[:recipe_id])
  end
end
