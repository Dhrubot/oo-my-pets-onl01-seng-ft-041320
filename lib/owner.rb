class Owner
  # code goes here
  attr_accessor :cats, :dogs, :pets
  attr_reader :name, :species
  
  @@all = []
  @@pets = {cats: [], dogs: []}
  
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
    @@pets[:cats]
  end
  
  def dogs
    @@pets[:dogs]
  end
  
  def buy_cat(name)
    @@pets[:cats] << Cat.new(name, self)
  end
  
  def buy_dog(name)
    @@pets[:dogs] << Dog.new(name, self)
  end
  
  def walk_dogs
    @@pets[:dogs].each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    @@cats.each {|cat| cat.mood = "happy"}
  end
end