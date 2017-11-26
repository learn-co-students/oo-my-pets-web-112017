class Owner
#class variables:
  @@all = []
  @@count = 0
#simple readers and writers
  attr_reader :species
  attr_accessor :name, :pets
#initialize
  def initialize(species_name)
    @name = nil
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species_name
    @@all << self
    @@count += 1
  end
#class methods
  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.count=(value)
    @@count = value
  end

  def self.reset_all
    self.count = 0
  end
#custom instance methods
  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish_name)
    pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    pets[:dogs].each do |dog_object|
      dog_object.mood = "happy"
    end
  end

  def play_with_cats
    pets[:cats].each do |cat_objects|
      cat_objects.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish_object|
      fish_object.mood = "happy"
    end
  end

  def list_pets
    "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end

  def sell_pets
    pets.each do |pet_class, class_array|
      class_array.each do |pet_object|
        pet_object.mood = "nervous"
      end
    end
    @pets = {fishes: [], cats: [], dogs: []}
  end

end
