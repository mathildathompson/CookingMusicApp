class Recipe < ActiveRecord::Base
  attr_accessible :method, :name, :image_url, :category_id
  
  has_many :tracks, :through => :recipe_tracks
  has_many :recipe_tracks
  belongs_to :category
end
