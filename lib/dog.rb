class Dog

  attr_reader :name
  attr_accessor :mood

  def initialize(dog_name)
    @name = dog_name
    @mood = "nervous"
  end

end
