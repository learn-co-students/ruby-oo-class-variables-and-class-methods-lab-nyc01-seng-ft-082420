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
    @@genres << @genre
    @@artists << @artist
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
    genre_count_hash = {}
    @@genres.map do | ele | 
      if genre_count_hash.key?(ele)
        genre_count_hash[ele] += 1
      else
        genre_count_hash[ele] = 1
      end
    end
    genre_count_hash
  end

  def self.artist_count
    #returns hash { "artist" => number of songs in genre}
    artist_count_hash = {}
    @@artists.map do | ele | 
      if artist_count_hash.key?(ele)
        artist_count_hash[ele] += 1
      else
        artist_count_hash[ele] = 1
      end
    end
    artist_count_hash
  end
end