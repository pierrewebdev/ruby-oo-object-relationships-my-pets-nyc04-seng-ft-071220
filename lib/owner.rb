class Owner
  # code goes here
  # code goes here
  
  #I don't think that the cat should be able to change names
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end