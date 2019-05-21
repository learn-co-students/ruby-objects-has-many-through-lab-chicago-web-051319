require 'pry'


class Song
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name, artist, genre)
        #binding.pry
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
    end


    def self.all
        @@all
    end


end
