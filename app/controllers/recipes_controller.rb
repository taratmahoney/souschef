class RecipesController < ApplicationController


  def index
    @recipe = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.create
    @recipe.steps.build
    @recipe.ingredients.build
  end
  def create
    @recipe = Recipe.find(recipe_params)

      if
  end
end
