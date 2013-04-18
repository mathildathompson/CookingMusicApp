class CreateRecipeTracks < ActiveRecord::Migration
  def change
    create_table :recipe_tracks do |t|
      t.integer :recipe_id
      t.integer :track_id

      t.timestamps
    end
  end
end
