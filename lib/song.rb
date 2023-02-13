require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@count += 1
        @@genres << genre 
        @@artists << artist      
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
        
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genres.tally do |gene|
            gene
        end
    end

    def self.artist_count
        @@artists.tally do |art|
            art
        end
    end

end

ninety_nine_problems = Song.new("99 Problems", "snoop", "rap")
