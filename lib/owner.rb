require 'pry'

class Owner

attr_accessor :name, :pets
attr_reader :species

@@all = []

def initialize (species)
  @species = species
  self.class.all << self
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
  new_fish = Fish.new(name)
  @pets[:fishes] << new_fish
  new_fish
end

def buy_cat(name)
  new_cat = Cat.new(name)
  @pets[:cats] << new_cat
  new_cat
end

def buy_dog(name)
  new_dog = Dog.new(name)
  @pets[:dogs] << new_dog
  new_dog
end

def walk_dogs
  self.pets[:dogs].each { |dog| dog.mood = "happy"}
end

def play_with_cats
  self.pets[:cats].each { |cat| cat.mood = "happy"}
end

def feed_fish
    self.pets[:fishes].each {|fish| fish.mood = "happy"}
end

def sell_pets
  self.pets.each do |type, pet_lists|
      pet_lists.each {|pet| pet.mood = "nervous"}
      pet_lists.clear
    end
  end

def list_pets
  fishes = self.pets[:fishes].count
  dogs = self.pets[:dogs].count
  cats = self.pets[:cats].count
  "I have #{fishes} fish, #{dogs} dog(s), and #{cats} cat(s)."
end

end

# owner = Owner.new("human")
# owner.say_species
# owner.pets
# owner.buy_fish("Ham")
# owner.buy_dog("Lassie")
# owner.buy_cat("George")
# owner.list_pets
# binding.pry
# owner.sell_pets
# binding.pry
