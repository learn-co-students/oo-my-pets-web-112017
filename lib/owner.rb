class Owner
  # code goes here

  @@all = [] #keeps track of all owners
  attr_reader :species, :name
  attr_accessor :pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
  end

  #   Class methods
    # keeps track of the owners that have been created (FAILED - 1)
    # can reset the owners that have been created (FAILED - 2)
    # can count how many owners have been created (FAILED - 3)
    # can initialize an owner (FAILED - 4)

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  #instance methods

  def say_species
    "I am a #{self.species}."
  end

  def name=(name)
    @name = name
  end



  def buy_fish(fish)
    self.pets[:fishes].push(Fish.new(fish))
  end

  def buy_cat(cat)
    self.pets[:cats].push(Cat.new(cat))
  end

  def buy_dog(dog)
    self.pets[:dogs].push(Dog.new(dog))
  end

  def walk_dogs
    become_happy(:dogs)
  end

  def play_with_cats
    become_happy(:cats)
  end

  def feed_fish
    become_happy(:fishes)
  end

  def become_happy(animals)
    self.pets[animals].each do |animal|
      animal.mood = "happy"
    end
  end

  def become_nervous()
    self.pets.each do |type, animal|
      animal.each do |name|
        name.mood = "nervous"
      end
    end
  end

  def sell_pets
    become_nervous
    pets.clear
  end

  def list_pets
    print_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

  def print_pets
    self.pets.each do |type, animal|
      animal.each do |name|
        puts name.name
      end
    end
  end


end
