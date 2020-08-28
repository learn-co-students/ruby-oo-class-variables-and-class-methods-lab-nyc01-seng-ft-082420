require "pry"

class Song

  @@artists = []
  @@genres = []
  @@count = 0
  attr_accessor :artist, :genre, :genre_count, :name

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if hash == {}
        hash = {genre => 1}
      elsif hash[genre]
        hash[genre] += 1
      else
        hash[genre] = 1
      end
    end
    return hash
  end

  def self.artist_count
    hash ={}
    @@artists.each do |artist|
      if hash == {}
        hash = {artist => 1}
      elsif hash[artist]
        hash[artist] += 1
      else
        hash[artist] = 1
      end
    end
    return hash
  end
end
