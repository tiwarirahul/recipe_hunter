class RecipesController < ApplicationController
  def index

  	@search_term = params[:search]||'english'

  	@recipes = Recipes.for(@search_term)

  	 end
end
