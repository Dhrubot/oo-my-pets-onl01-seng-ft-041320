class Dog
  # code goes here
  
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  @@cats = []
  @@dogs = []
  def initialize(name, owner, mood = "nervous")
    @name = name
    @owner = owner
    @mood = mood
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def cats 
    @@all.map {|pet| pet.object = Cat}
  end
end