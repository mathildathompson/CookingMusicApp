class RecipesController < ApplicationController

 before_filter :load_recipe, :only => [:show, :edit, :update, :destroy]
    def load_recipe
      @recipe = Recipe.find(params[:id])
 end
  
  def index
     @category= Category.find(params[:category_id])
  end

  
  def show
    @category = Category.find(params[:category_id])
    @all_tracks_recipe = Track.includes(:recipes => :category).where('categories.id = ? and recipes.id = ?', @category.id, @recipe.id)
    
   end

  def new
    @recipe = Recipe.new
   end

  def create
    @recipe = Recipe.new(params[:recipe])

    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render json: @recipe, status: :created, location: @recipe }
      else
        format.html { render action: "new" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
      respond_to do |format|
      if @recipe.update_attributes(params[:recipe])
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe.destroy

    respond_to do |format|
      format.html { redirect_to recipes_url }
      format.json { head :no_content }
    end
  end
end
