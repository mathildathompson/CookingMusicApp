class Recipe < ActiveRecord::Base
  attr_accessible :method, :name, :image_url, :category_id
  
  has_many :tracks, :through => :recipe_tracks
  has_many :recipe_tracks
  belongs_to :category
  has_many :recipe_ingredients
  has_many :ingredients, :through => :recipe_ingredients
  has_many :comments

  

  # def sound_cloud_player
  #     client = Soundcloud.new(:client_id => 'af7252ea4824fd47f04dcbc42a342873')
  #     client.get('/oembed', :url => self.track_url)['html']
  # end

  def self.search(name)
    # @recipes = []
    name_search = name.gsub(" ", "%20")
    app_id = "f6f00dc9"
    app_key = "fa1574039cfce78c54fde0a77811a57f"
    searchresult = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=#{app_id}&_app_key=#{app_key}&maxResult=1&requirePictures=true&q=#{name_search}")
    # @recipes << searchresult
    # binding.pry
  end
end
