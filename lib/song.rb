require 'pry'
class Song
    attr_accessor :name,:genre,:artist
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name,artist,genre)
        @name = name
        @genre = genre
        @artist = artist
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        genre_count = {}
        @@genres.each { |g|
            if genre_count[g]
                genre_count[g] += 1
            else
                genre_count[g] = 1
            end
        }
        genre_count
        
    end

    def self.artist_count
        artist_count = {}
        @@artists.each { |genre|
            if artist_count[genre]
                artist_count[genre] += 1 
            else
                artist_count[genre] = 1
            end
        }
        artist_count
    end


end
#binding.pry

