require "pry"

class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self

  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end


  # INSTANCE METHODS

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    fish_name = Fish.new(fish_name)
    self.pets[:fishes] << fish_name
  end

  def buy_cat(cat_name)
    cat_name = Cat.new(cat_name)
    self.pets[:cats] << cat_name
  end

  def buy_dog(dog_name)
    dog_name = Dog.new(dog_name)
    self.pets[:dogs] << dog_name
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    self.pets.values.flatten.each do |pets|
      pets.mood = "nervous"
    end

    self.pets.keys.each { |keys| self.pets[keys].clear }
  end

  def list_pets
    fish = self.pets[:fishes].length
    cats = self.pets[:cats].length
    dogs = self.pets[:dogs].length
     "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end


end
