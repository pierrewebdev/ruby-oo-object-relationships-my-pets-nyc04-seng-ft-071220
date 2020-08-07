class Dog
  # code goes here
  # code goes here
  
  #I don't think that the dog should be able to change names
  attr_reader :name
  #but their owner can change if they sell the dog
  attr_accessor :owner
  def initialize(name,owner)
    @name = name
    @owner =owner
  end
end