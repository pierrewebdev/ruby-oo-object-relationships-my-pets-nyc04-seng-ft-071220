class Owner
  # code goes here
  
  #I don't think that the owner should be able to change names
  attr_reader :name, :species
  def initialize(name)
    @name = name
    @species = "human"
  end
  
  def say_species
    "I am a #{self.species}"
  end
  
  
  
  
  
  
end