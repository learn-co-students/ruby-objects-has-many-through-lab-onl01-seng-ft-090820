class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def new_song(song, genre)
    Song.new(name, self, genre)
  end

  def genres
    songs.map {|song| song.genre}
  end

  def self.all
    @@all
  end
end
