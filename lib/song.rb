class Song
  
  @@all = []
  
  def initialize(name , artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist
    @artist
  end
  
  def name
    @name
  end
  
  def name=(nam)
    @name = nam
  end
  
  def songs
    @songs
  end
  
  def genre
    @genre
  end
  
  def genre=(gen)
    @genre = gen
  end
end