class RecipesController < ApplicationController


  def index
    @recipe = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @recipe.steps.build
    @recipe.ingredients.build
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end


  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_url
    else
      render 'new'
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, ingredients_attributes: [:id, :name, :_destroy], steps_attributes: [:id, :order_number, :content, :_destroy])
  end

end
