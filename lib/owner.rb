require "pry"
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
  
  def self.all
    @@all
  end
  
  def self.count #tells us how many owner instances there are
    @@all.length
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    Cat.all.select{|cat|cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog|dog.owner == self}
  end
  
  def buy_cat(cat_instance)
    binding.pry
    cat_instance = Cat.new(cat_instance)
    cat_instance.owner = self
  end
  
  
  
  
  
  
end