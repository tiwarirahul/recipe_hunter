class RecipesController < ApplicationController
  def index

  	@search_term = params[:search]||'english'
'byebug'
  	@recipes = Recipes.for(@search_term)

  	 end
end
