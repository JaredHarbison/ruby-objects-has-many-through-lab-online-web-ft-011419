class Patient 
  attr_accessor :name 
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @appointments = []
    @@all << self 
  end 
  
end 