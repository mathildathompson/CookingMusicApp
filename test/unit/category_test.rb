require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

 setup do
 	@category = Category.new(:name => "Italian")
 	@category.recipes << recipe(:one)(:name => "Noodles", :method => "Put noodles in boiling water", :image_url => "http://wownoodlehouse.webs.com/noodles.jpg", :cateogry_id => 1)
 	@category.save
 	
 end

   should 'respond to recipes' do
   	  assert@category.respond_to?(:recipes)
   	  assert_not_nil @category.recipes
   	  assert @category.recipes.is_a?(Array)
   	  assert_equal 1, @category.length
   	  assert_equal 1, @cateogry.recipes.length
   	  assert_equal "Noodles", @category.recipes.first.name
   	  assert_equal "Put noodles in boiling water", @category.recipes.first.method

    end
 end






   

    