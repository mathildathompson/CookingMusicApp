class Comment < ActiveRecord::Base
  attr_accessible :body, :recipe_id
end
