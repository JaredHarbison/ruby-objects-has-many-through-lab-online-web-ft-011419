class Genre 
  attr_accessor :name
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @songs = [] 
    @@all << self  
  end 
  
  def songs 
    @songs 
  end 
  
  def add_song(song)
    @songs << song
  end
  
  def artists                     #=> This is how the other two
    self.songs.collect do |song|  #=> classes talk to each other
      song.artist
    end
  end
  
end 