class Genre 
  attr_accessor :name
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self  
  end 
  
  def songs 
    @songs
  end 
  
  def artists                     
    self.songs.collect do |song| 
      song.artist
    end
  end
  
end 