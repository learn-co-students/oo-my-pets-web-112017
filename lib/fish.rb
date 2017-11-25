class Fish
  attr_reader :name, :mood
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

  def mood=(new_mood)
    @mood = new_mood
  end
end
