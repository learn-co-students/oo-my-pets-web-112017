require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end

  def initialize(species)
    @species = "human"
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog_obj|
      dog_obj.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat_obj|
      cat_obj.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish_obj|
      fish_obj.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |animal, animal_array|
      animal_array.each do |animal_obj|
        animal_obj.mood = "nervous"
      end
      self.pets[animal] = animal_array.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
   end
 end
