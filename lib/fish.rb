class Fish
   attr_accessor :name, :mood
  def initialize(name,mood="chill") 
  
    @name = name 
    @mood = mood
  end

  def new_mood(moods)
    @mood = moods
  end
 
 end

the_fish=Fish.new("Bubbles")
  # code goes here
puts the_fish.name
puts the_fish.mood
the_fish.new_mood("sad")
puts the_fish.mood
