class Genre 
  attr_accessor :name, :songs 
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
  
  def artists                     
    self.songs.collect do |song| 
      song.artist
    end
  end
  
end 