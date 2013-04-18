require 'test_helper'
require 'pry'

class RecipeTest < ActiveSupport::TestCase

	

    setup do
      @recipe = Recipe.new(:name => "Pizza", :method => "Put the toppings on the pizza base and put in pizza oven")

      @track = Track.new(:name => "Old Pine", :artist => "Ben Howard", :track_url => "http://soundcloud.com/forss/flickermood")
      @recipe_track = RecipeTrack.new(:recipe => @recipe, :track => @track)
      @recipe.recipe_tracks << @recipe_track
      @recipe.save!

    end

      test "should have many line_items" do
      assert @recipe.respond_to?(:recipe_tracks)
      binding.pry
      assert_equal 1, @recipe.line_items.length
      assert @recipe.line_items.is_a?(Array)
      assert @recipe.line_items.first.is_a?(LineItem)
      assert_equal @recipe, @track.line_items.first.recipe
    end

      test "should have many tracks" do
      assert @recipe.respond_to?(:tracks)
    end

 
  
end
