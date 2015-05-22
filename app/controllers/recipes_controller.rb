class RecipesController < ApplicationController


  def index
    @recipe = Recipe.all
    speech = Speech.new()
    speech.speak
  end
end
