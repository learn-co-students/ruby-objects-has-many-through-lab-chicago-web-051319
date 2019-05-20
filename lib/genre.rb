require 'pry'
class Genre
  attr_reader :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song|
      song.genre.name == @name
    }
  end

  def self.all
    @@all
  end

  def artists
    self.songs.map {|song| song.artist}
  end

end
