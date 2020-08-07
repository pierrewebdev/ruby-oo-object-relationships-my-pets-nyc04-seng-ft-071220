class Cat
  # code goes here
  #my class variable for all instances of cat
  @@all = []
  
  #I don't think that the cat should be able to change names
  attr_reader :name
  #but their owner can change if they sell the cat
  attr_accessor :owner, :mood
  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
  
end