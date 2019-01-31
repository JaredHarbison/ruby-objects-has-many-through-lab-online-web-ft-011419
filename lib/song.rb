class Song 
  attr_accessor :name, :artist, :genre 
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@all << self 
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

   def genres
    Song.all.map do |song|
      song.genre
    end
  end
  
end 
