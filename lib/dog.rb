class Dog
  # code goes here
  attr_accessor :mood
  attr_reader :name
  @@all = []

  def initialize (name)
    @name = name
    @@all << self
    @mood = "nervous"
  end

  def all
    @@all
  end
  
end
