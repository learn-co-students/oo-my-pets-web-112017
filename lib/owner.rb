require 'pry'
class Owner

  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    name = @name
    @species = "human"
    @pets = {fishes: [], dogs: [], cats: []}
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

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog_object|
      dog_object.mood = "happy"
    end
  end

  def feed_fish
      self.pets[:fishes].each do |fish_object|
        fish_object.mood = "happy"
      end
    end

  def play_with_cats
    self.pets[:cats].each do |cat_object|
      cat_object.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, pets_array|
      pets_array.each do |o|
        o.mood = "nervous"
        end
      end
    #below I fully reset -- but how would I permanently "clear" these arrays?
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

end
