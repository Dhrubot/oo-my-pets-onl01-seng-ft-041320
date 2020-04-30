class Dog
  # code goes here
  
  attr_accessor :owner, :mood, :cats, :dogs
  attr_reader :name
  
  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
    @cats = []
    @dogs = []
  end
  
  def self.all 
    @@all
  end
  
  def cats 
    @cats
  end
end