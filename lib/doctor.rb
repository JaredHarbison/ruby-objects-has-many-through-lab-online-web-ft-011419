class Doctor 
  attr_accessor :name
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(date, patient)
    patient = Patient.new(date, self, patient)
    self.patient.last
  end
  
  #def songs
  #  Song.all.select do |song|
  #    song.artist == self
  #  end
  #end

  #  def genres
  #   Song.all.map do |song|
  #    song.genre
  #  end
  #end
  
end 