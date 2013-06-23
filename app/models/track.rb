require 'soundcloud'
class Track < ActiveRecord::Base
  attr_accessible :artist, :name, :track_url
  
  has_many :recipes, :through => :recipe_tracks
  has_many :recipe_tracks

 
  

  def sound_cloud_player
      client = Soundcloud.new(:client_id => 'af7252ea4824fd47f04dcbc42a342873')
      client.get('/oembed', :url => self.track_url)['html']
  end
  
  # def getrecipe
  #      http://api.yummly.com/v1/api/recipe/Avocado-cream-pasta-sauce-recipe-306039?_app_id=aef37a85&_app_key=
  #      fb2b9a723ca9b7598a9d9c5e1eb6bd43
  # end

  
 end
