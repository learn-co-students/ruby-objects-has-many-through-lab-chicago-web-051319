class Artist
  
  attr_accessor :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |i|
      i.artist == self
    end
  end

  def genres
    songs.each do |i|
      if i.artist == self && !@genres.include?(i.name)
        @genres << i.genre
      end
    end
    @genres
  end
  
  def new_song(name , genre)
    temp = Song.new(name , self , genre)
    #p temp
    @songs << temp
    return temp
  end
end