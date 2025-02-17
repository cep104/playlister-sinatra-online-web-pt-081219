class Song < ActiveRecord::Base  
    
  # include Slugifiable::InstanceMethods
  # extend Slugifiable::ClassMethods

    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genres

    def slug 
      self.name.downcase.gsub(" ","-")
      
    end
   
    def self.find_by_slug(slug)
      Song.all.find{|song| song.slug == slug}
      
    end
      
   
    
  end