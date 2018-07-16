class Dog
   attr_accessor :name, :mood
  def initialize(name,mood="chill") 
  
  @name = name 
  @mood = mood
  end 

  def new_mood(moods)
    @mood = moods
  end
end

the_dog=Dog.new("Stan")
  # code goes here
puts the_dog.name
# puts the_dog.mood
the_dog.new_mood("happy")
puts the_dog.mood
