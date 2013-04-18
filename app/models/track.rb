require 'soundcloud'
class Track < ActiveRecord::Base
  attr_accessible :artist, :name, :track_url
  
  has_many :recipes, :through => :recipe_tracks
  has_many :recipe_tracks

 



	def self.search_tracks(name, artist)

		client = Soundcloud.new(:client_id => 'af7252ea4824fd47f04dcbc42a342873')
		tracks = client.get('/tracks', :q => search)
        #create track objects, iterate over array of hashes
	end

	def self.find(name, artist)

	   client = Soundcloud.new(:client_id => 'af7252ea4824fd47f04dcbc42a342873') 
	   @sound_cloud_widget = client.get("/oembed", :url => "http://api.soundcloud.com/tracks/13276086")['html']
	end

end

