require 'soundcloud'
class Track < ActiveRecord::Base
  attr_accessible :artist, :name, :track_url
  
  has_many :recipes, :through => :recipe_tracks
  has_many :recipe_tracks

 
  

  def sound_cloud_player

  client = Soundcloud.new(:client_id => 'af7252ea4824fd47f04dcbc42a342873')
  client.get('/oembed', :url => self.track_url)['html']

  end
 end
