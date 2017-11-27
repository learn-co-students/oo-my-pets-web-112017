require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def walk_dogs
   self.pets[:dogs].each {|animal| animal.mood = "happy"  }
  end

  def play_with_cats
   self.pets[:cats].each {|animal| animal.mood = "happy"  }
  end

 def feed_fish
  self.pets[:fishes].each {|animal| animal.mood = "happy"  }
 end

 def list_pets
  "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
 end

 def sell_pets
   self.pets.each do |animal, animal_array|
     animal_array.each do |animal|
       animal.mood = "nervous"
     end
   end
   pets.clear
 end

end
