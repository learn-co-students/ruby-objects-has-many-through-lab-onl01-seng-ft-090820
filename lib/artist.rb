class Artist

    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all 
    end 
    
    def new_song(name, genre)
        Song.new(name, genre, self)
    end 
   
    def songs
        Song.all.select {|s| s.genre == self}
    end 

    def genres
        songs.collect(&:genre) 
    end 

end 