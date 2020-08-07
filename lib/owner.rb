class Owner
  # code goes here
  
  #I don't think that the owner should be able to change names
  attr_reader :name, :species
  def initialize(name)
    @name = name
    @species = "human"
  end
end