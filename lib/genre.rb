class Genre 
  attr_accessor :name, :artist, :songs 
  
  
  @@all = []
  def initialize(name)
    @name = name
    @artist = artist
    @songs = songs
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs 
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    self.songs.collect {|song| song.artist}
  end
end