class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@all = []
  
  def initialize(name, artist, genre)
    @artist = artist
    @genre = genre 
    @name = name 
    @@all << self 
  end
  
  def self.all 
    @@all 
  end
  
end