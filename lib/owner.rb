class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  #--------HUMAN START
  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def say_species
    "I am a #{@species}."
  end
#--------HUMAN END

#--------PETS
  def buy_fish(fish)
    fish = Fish.new(fish)
    self.pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    self.pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    self.pets[:dogs] << dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    #make all pets nervous
    self.pets[:fishes].each {|fish| fish.mood = "nervous"}
    self.pets[:cats].each {|cat| cat.mood = "nervous"}
    self.pets[:dogs].each {|dog| dog.mood = "nervous"}
    #remove them
    self.pets[:fishes] = []
    self.pets[:cats]= []
    self.pets[:dogs] = []

  end

  def list_pets
    f_count = self.pets[:fishes].size
    c_count = self.pets[:cats].size
    d_count = self.pets[:dogs].size
    "I have #{f_count} fish, #{d_count} dog(s), and #{c_count} cat(s)."
  end

#--------PETS
end
