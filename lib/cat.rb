class Cat

  attr_reader :name
  attr_accessor :mood

  def initialize(cat_name)
    @name = cat_name
    @mood = "nervous"
  end

end
