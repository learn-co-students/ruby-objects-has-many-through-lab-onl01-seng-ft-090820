class Genre 
  
  attr_accessor :name, :songs, :artists
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def songs
    Song.all.select{|s|s.genre == self}
  end 
  
  def artists
    Song.all.map do |song|
      song.artist 
    end 
  end
  
end 