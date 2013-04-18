class RecipeTrack < ActiveRecord::Base
  attr_accessible :recipe_id, :track_id
  belongs_to :recipe
  belongs_to :track
end
