class Cat
   attr_accessor :name, :mood
  
  def initialize(name,mood = "chill") 
  @name = name 
  @mood = mood
  end 
  
  def new_mood(moods)
    @mood = moods
  end

end

the_cat=Cat.new("fluffy")

puts the_cat.name
puts the_cat.mood
the_cat.new_mood("angry")
puts the_cat.mood