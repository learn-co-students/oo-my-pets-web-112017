class Fish

  attr_reader :name
  attr_accessor :mood

  def initialize(fish_name)
    @name = fish_name
    @mood = "nervous"
  end

end
