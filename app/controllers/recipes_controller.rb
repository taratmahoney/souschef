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

  # /recipes/tts?speak=hello
  def tts
    text = params[:speak]
    cmdline = [
      "curl",
      "http://translate.google.com/translate_tts?tl=en&q=#{text}", 
      "-e", "http://translate.google.com/",
      "-A", "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36"
    ]

    mp3 = IO.popen(cmdline, "r") do |f|
      f.read
    end

    send_data mp3
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update_attributes(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      render :edit, alert: "Something went wrong. Try again:"
    end
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
    params.require(:recipe).permit(:name, :description, :image, :time, ingredients_attributes: [:id, :name, :unit, :number, :_destroy], steps_attributes: [:id, :order_number, :content, :_destroy])
  end

end
