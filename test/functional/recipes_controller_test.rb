require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  setup do
    @recipe = Recipe.new(:name => "Pasta", :method => "Put in boiling water", :image => "http://www.cookingclassy.com/wp-content/uploads/2012/11/browned+butter+lemon+pasta3.jpg", :category_id => 1)
    @recipe.category = Category.new(:name => "Italien")
    @recipe.save
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipes)
    assert_not_nit assigns(:category)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post :create, recipe: { method: @recipe.method, name: @recipe.name }
    end

    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should show recipe" do
    get :show, id: @recipe
    assert_response :success
    assert_not_nit assigns(:category)
    assert_not_nil assigns(:all_tracks_recipe)
  end

  test "should get edit" do
    get :edit, id: @recipe
    assert_response :success
  end

  test "should update recipe" do
    put :update, id: @recipe, recipe: { method: @recipe.method, name: @recipe.name }
    assert_redirected_to recipe_path(assigns(:recipe))
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete :destroy, id: @recipe
    end

    assert_redirected_to recipes_path
  end
end
