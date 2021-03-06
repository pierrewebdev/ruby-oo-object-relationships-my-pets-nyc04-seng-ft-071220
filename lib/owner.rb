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
    cat_instance = Cat.new(cat_instance,self)
  end
  
  def buy_dog(dog_instance)
    dog_instance = Dog.new(dog_instance,self)
  end
  
  def walk_dogs
    self.dogs.each {|dog|dog.mood = "happy"}
  end
  
  def feed_cats
    self.cats.each {|dog|dog.mood = "happy"}
  end
  
  def sell_pets
    my_cats = self.cats
    my_dogs = self.dogs
    all_my_pets = my_cats + my_dogs
    all_my_pets.each do|pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end
  
  def list_pets
     my_cats = self.cats
    my_dogs = self.dogs
    "I have #{my_dogs.length} dog(s), and #{my_cats.length} cat(s)."
  end
  
  
  
  
  
end