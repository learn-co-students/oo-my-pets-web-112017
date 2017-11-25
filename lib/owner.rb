require "pry"
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self

  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each { |d| d.mood = "happy"  }
  end

  def play_with_cats
    self.pets[:cats].each { |d| d.mood = "happy"  }
  end

  def feed_fish
    self.pets[:fishes].each { |d| d.mood = "happy"  }
  end

  def sell_pets
    self.pets.each do |pet_ty, pet_arr|
      pet_arr.each { |p| p.mood = "nervous" }
      pet_arr.length.times do
        pet_arr.shift
      end
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end
