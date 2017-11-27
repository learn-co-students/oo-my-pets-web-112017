class Owner
  # code goes here
  attr_accessor :name, :pets, :mood

  @@all = []
  @final = {}

  def initialize(species)
    @@species = species
    @@all << self
    @pets = {:fishes => [], :cats => [], :dogs => []}
  end

  def self.all
    @@all
  end

  def mood
    @mood
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    @@all.length
  end

  def species
    @@species
  end

  def say_species
    "I am a #{@@species}."
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    self.pets[:dogs] << new_dog
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    self.pets[:cats] << new_cat
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

  def sell_pets
    self.pets.each {|species, info| info.each {|animal| animal.mood = "nervous"  }  }
    pets.clear
  end

  def list_pets
    "I have #{pets[:fishes].length} fish, #{pets[:dogs].length} dog(s), and #{pets[:cats].length} cat(s)."
  end

end
