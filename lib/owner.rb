class Owner
  # code goes here
  
  #my class variable for all instance of owner
  @@all = []
  
  #I don't think that the owner should be able to change names
  attr_reader :name, :species
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def say_species
    "I am a #{self.species}."
  end
  
  
  
  
  
  
end