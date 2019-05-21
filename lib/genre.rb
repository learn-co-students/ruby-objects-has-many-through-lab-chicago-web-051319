class Genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    @artists = []
  end
  
  def name
    @name
  end
  
  def name=(nam)
    @name = nam
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select do |i|
      i.genre = @name
    end
  end
  
  def artists
    songs.each do |i|
      if !@artists.include?(i.artist)
        @artists << i.artist
      end
    end
    @artists
  end
end