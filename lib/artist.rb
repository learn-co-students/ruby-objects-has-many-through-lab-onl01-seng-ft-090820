class Artist

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def songs
    end 

    def new_song
    end 

    def genres
    end 

end 