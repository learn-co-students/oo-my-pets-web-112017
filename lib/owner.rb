require 'pry'

class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

def initialize(species)
	@species = species
	@@all << self
	@pets = {:fishes => [], :dogs => [], :cats => []}
end

def say_species
	"I am a #{self.species}."
end

 def self.all 
 	@@all
 end

 def self.count
 	self.all.length
 end

 def self.reset_all
 	self.all.clear
 end

 def buy_fish(name)
 	@new_fish = Fish.new(name)
 	pets[:fishes] << @new_fish
 end

def buy_cat(name)
	@new_cat = Cat.new(name)
 	pets[:cats] << @new_cat
end


def buy_dog(name)
	@new_dog = Dog.new(name)
 	pets[:dogs] << @new_dog
end

def walk_dogs
	pets[:dogs].each do |dog|
		dog.mood = "happy"
	end
end

def play_with_cats
	pets[:cats].each do |cat|
		cat.mood = "happy"
	end
end

def feed_fish
	pets[:fishes].each do |fish|
		fish.mood = "happy"
	end
end

def sell_pets
	pets.values.flatten.each do |pet|
		pet.mood = "nervous"
	end
	pets.clear
end

def list_pets
	animals = pets.values_at(:fishes,:dogs,:cats)
	"I have #{animals[0].length} fish, #{animals[1].length} dog(s), and #{animals[2].length} cat(s)."
end


end