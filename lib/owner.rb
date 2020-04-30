class Owner
  # code goes here
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  
  @@all = []
  @@cats = []
  @@dogs = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def cats
    @@cats
  end
  
  def dogs
    @@dogs
  end
  
  def buy_cat(name)
    @@cats << Cat.new(name, self)
  end
  
  def buy_dog(name)
    @@dogs << Dog.new(name, self)
  end
  
  def walk_dogs
    @@dogs.
  end
end