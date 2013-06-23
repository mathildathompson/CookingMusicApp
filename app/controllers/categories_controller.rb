class CategoriesController < ApplicationController
   before_filter :load_category, :only => [:show, :edit, :update, :destroy]
      def load_category
         @category = Category.find(params[:id])
       end

  def index
    @categories = Category.all
  end
  
end
