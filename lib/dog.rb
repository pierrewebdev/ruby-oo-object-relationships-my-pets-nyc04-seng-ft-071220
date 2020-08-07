class Dog
  # code goes here
  # class variable for all instances of dog
  @@all = []
  
  #I don't think that the dog should be able to change names
  attr_reader :name
  #but their owner can change if they sell the dog
  attr_accessor :owner, :mood
  def initialize(name,owner)
    @name = name
    @owner =owner
    @mood = "nervous"
  end
  
  def self.all
    @@all
  end
  
  
  
end