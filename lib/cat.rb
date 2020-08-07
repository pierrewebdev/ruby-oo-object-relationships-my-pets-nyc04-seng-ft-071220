class Cat
  # code goes here
  
  #I don't think that the cat should be able to change names
  attr_reader :name
  #but their owner can change if they sell the cat
  attr_accessor :owner
  def initialize(name,owner)
    @name = name
    @owner =owner
    @mood = "nervous"
  end
end