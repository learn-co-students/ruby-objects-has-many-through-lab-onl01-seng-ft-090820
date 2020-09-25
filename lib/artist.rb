class Artist
  
  attr_accessor :name, :genres
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name)
    song.genre = genre
    song.artist = self
    song
  end
    
  def songs
    Song.all.select{|song|song.artist == self}
  end
  
  def genres
    self.songs.map {|song|song.genre}.uniq
  end
  
  
end