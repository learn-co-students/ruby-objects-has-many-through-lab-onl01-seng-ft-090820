class Genre

    attr_accessor :name 
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all
    end 

    def new_song(name, artist)
        Song.new(name, self, artist)
    end 

    def songs
        Song.all.select {|s| s.artist == self}
    end

    def artists
        songs.collect(&:artist) 
    end 

end 