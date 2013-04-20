class RemoveStringFromIngredient < ActiveRecord::Migration
  def up
    remove_column :ingredients, :string
  end

  def down
    add_column :ingredients, :string, :string
  end
end
